from flask import Flask, request, render_template, url_for, session, redirect
from flask_restful import Resource, Api
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, RadioField, TextAreaField
from wtforms.fields import EmailField
from wtforms.validators import InputRequired
import os
import time

application = app = Flask(__name__)

import scraper

import pymysql

from bs4 import BeautifulSoup
from urllib.parse import quote_plus
import requests

from pyaxmlparser import APK


def search(query):
    res = requests.get('https://apkpure.com/search?q={}&region='.format(quote_plus(query)), headers={
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.5 (KHTML, like Gecko) '
                      'Version/9.1.2 Safari/601.7.5 '
    }).text
    soup = BeautifulSoup(res, "html.parser")
    search_result = soup.find('div', {'id': 'search-res'}).find('dl', {'class': 'search-dl'})
    if search_result != None:
        app_tag = search_result.find('p', {'class': 'search-title'}).find('a')
        download_link = 'https://apkpure.com' + app_tag['href']
        return download_link


def download(link):
    res = requests.get(link + '/download?from=details', headers={
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.5 (KHTML, like Gecko) '
                      'Version/9.1.2 Safari/601.7.5 '
    }).text
    soup = BeautifulSoup(res, "html.parser").find('a', {'id': 'download_link'})
    if soup != None:
        if soup['href']:
            r = requests.get(soup['href'], stream=True, headers={
                'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.5 (KHTML, like Gecko) '
                              'Version/9.1.2 Safari/601.7.5 '
            })
            with open(link.split('/')[-1] + '.apk', 'wb') as file:
                for chunk in r.iter_content(chunk_size=1024):
                    if chunk:
                        file.write(chunk)
    return link.split('/')[-1] + '.apk'


def download_apk(app_id):
    download_link = search(app_id)

    if download_link is not None:
        print('Downloading {}.apk ...'.format(download_link))
        idDownload = download(download_link)
        print('Download completed!')
        return idDownload
    else:
        print('No results')


def obtainList(collection):
    resultList = scraper.list(collection, None, None, 500, 'es', 'US', True)
    return resultList


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/listadoApks/')
def my_link():

    start_time = time.time()


    # unix_socket = '/cloudsql/{}'.format('boreal-byte-264518:europe-west1:python-mysql')

    # connection = pymysql.connect(host='35.233.86.50',
    #                              user='root',
    #                              password='kalandria',
    #                              db='testPy',
    #                              charset='utf8mb4',
    #                              cursorclass=pymysql.cursors.DictCursor)
    # cursor = connection.cursor()

    # cursor.execute("SET NAMES 'utf8mb4'")
    # cursor.execute("SET CHARACTER SET utf8mb4")

    collectionsList = []

    collectionsList.append('TOP_FREE')
    # collectionsList.append('TOP_PAID')
    # collectionsList.append('GROSSING')
    # collectionsList.append('TOP_FREE_GAMES')
    # collectionsList.append('TOP_PAID_GAMES')
    # collectionsList.append('TOP_GROSSING_GAMES')
    # collectionsList.append('TRENDING')
    # collectionsList.append('NEW_FREE')
    # collectionsList.append('NEW_PAID')
    # collectionsList.append('NEW_FREE_GAMES')
    # collectionsList.append('NEW_PAID_GAMES')

    for collection in collectionsList:

        resultList = obtainList(collection)

        # if resultList is not None:
        #     cursor.execute(
        #         "CREATE TABLE IF NOT EXISTS " + collection + "(id INT AUTO_INCREMENT PRIMARY KEY, appId VARCHAR(255),position INT, created DATE)")
        #
        totalApps = []
        totalAppsCollection = []
        contPosition = 1

        for app in resultList:

            # Obtenemos el packageName si este no existe en la tabla (descargamos, obtenemos, borramos apk)

            sql = "SELECT packageName FROM Aplicaciones WHERE appId = %s"

            val = app['appId']

            # cursor.execute(sql, val)
            #
            # packageNameQuery = cursor.fetchone()

            # if packageNameQuery is not None or cursor.lastrowid is None:
            #
            #     # Descarga de APK
            #     # idDownload = download_apk(app['appId'])
            #     idDownload = None
            #     if idDownload is not None:
            #         if os.path.exists(idDownload):
            #             apk = APK(idDownload)
            #             packageName = apk.packagename
            #             del apk
            #             os.remove(idDownload)
            #     else:
            #         packageName = None
            #
            #
            # else:
            #     packageName = None

            score = app.get('score')
            ratings = app.get('ratings')
            reviews = app.get('reviews')

            if score is not None:
                score = round(score, 2)

            apps = (app['appId'],
                    app['title'],
                    score,
                    app['summary'],
                    app['description'].encode(),
                    app['installs'],
                    app['maxInstalls'],
                    ratings,
                    reviews,
                    app['price'],
                    app['free'],
                    app['androidVersionText'],
                    app['developer'],
                    app['genre'],
                    app['genreId'],
                    app['contentRating'],
                    app['adSupported'],
                    app.get('recentChanges'),
                    app.get('released'),
                    app['editorsChoice'],
                    app['url']
                    )

            collectionApps = (app['appId'],
                              contPosition)

            totalApps.append(apps)
            totalAppsCollection.append(collectionApps)
            contPosition += 1

        sql = "INSERT INTO Aplicaciones(appId," \
              "title," \
              "score," \
              "summary," \
              "description," \
              "installs," \
              "maxInstalls," \
              "ratings," \
              "reviews," \
              "price," \
              "free," \
              "androidVersionText," \
              "developer," \
              "genre," \
              "genreId," \
              "contentRating," \
              "adSupported," \
              "recentChanges," \
              "released," \
              "editorsChoice," \
              "url," \
              "packagename," \
              "created) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,NOW()) ON DUPLICATE KEY UPDATE updated = NOW()," \
              "title=VALUES(title), " \
              "score=VALUES(score), " \
              "summary=VALUES(summary), " \
              "description=VALUES(description), " \
              "installs=VALUES(installs), " \
              "maxInstalls=VALUES(maxInstalls), " \
              "ratings=VALUES(ratings), " \
              "reviews=VALUES(reviews), " \
              "price=VALUES(price), " \
              "free=VALUES(free), " \
              "androidVersionText=VALUES(androidVersionText), " \
              "genre=VALUES(genre), " \
              "genreId=VALUES(genreId), " \
              "contentRating=VALUES(contentRating), " \
              "released=VALUES(released), " \
              "recentChanges=VALUES(recentChanges), " \
              "editorsChoice=VALUES(editorsChoice), " \
              "url=VALUES(url)"

        val = totalApps
        # cursor.executemany(sql, val)
        # connection.commit()
        # print(cursor.rowcount, "aplicaciones insertadas.")

        # Guardamos las aplicaciones en la tabla de Aplicaciones

        sql = "INSERT INTO " + collection + " (appId," \
                                            "position," \
                                            "created) VALUES (%s,%s,CURDATE())"
        val = totalAppsCollection
        # cursor.executemany(sql, val)
        # connection.commit()
        # print(cursor.rowcount, "aplicaciones del listado insertadas.")

    # connection.close()

    return "--- %s segundos ---" % (time.time() - start_time)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=int(os.environ.get("PORT", 8080)))
