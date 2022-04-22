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


def obtainList(collection, country):
    resultList = scraper.list(collection, None, None, 50, 'es', country, True)
    return resultList


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/listadoApks/')
def my_link():
    start_time = time.time()

    connection = pymysql.connect(host='testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com',
                                 user='root',
                                 password='kalandria',
                                 db='testPy',
                                 charset='utf8mb4',
                                 cursorclass=pymysql.cursors.DictCursor)
    cursor = connection.cursor()

    # Creamos la tabla de APLICACIONES si no existe
    cursor.execute(
        "CREATE TABLE IF NOT EXISTS " + 'APLICACIONES' + "(`appId` varchar(255) NOT NULL PRIMARY KEY,`title` varchar(255) DEFAULT NULL,`created` datetime DEFAULT NULL, `updated` datetime DEFAULT NULL, `score` float(255,2) DEFAULT NULL, `summary` varchar(255) DEFAULT NULL, `description` varchar(255) DEFAULT NULL, `installs` varchar(255) DEFAULT NULL, `maxInstalls` int(255) DEFAULT NULL, `ratings` varchar(255) DEFAULT NULL, `reviews` varchar(255) DEFAULT NULL, `histogram` varchar(255) DEFAULT NULL, `price` float(255,0) DEFAULT NULL, `free` varchar(255) DEFAULT NULL, `androidVersionText` varchar(255) DEFAULT NULL, `developer` varchar(255) DEFAULT NULL, `genre` varchar(255) DEFAULT NULL, `genreId` varchar(255) DEFAULT NULL, `contentRating` varchar(255) DEFAULT NULL, `adSupported` varchar(255) DEFAULT NULL, `released` varchar(255) DEFAULT NULL, `recentChanges` varchar(255) DEFAULT NULL, `editorsChoice` varchar(255) DEFAULT NULL, `url` varchar(255) DEFAULT NULL, `packagename` varchar(255) DEFAULT NULL)")

    collectionsList = []
    countriesList = []

    collectionsList.append('TOP_FREE')
    collectionsList.append('TOP_PAID')
    collectionsList.append('GROSSING')
    collectionsList.append('TOP_FREE_GAMES')
    collectionsList.append('TOP_PAID_GAMES')
    collectionsList.append('TOP_GROSSING_GAMES')
    collectionsList.append('TRENDING')
    collectionsList.append('NEW_FREE')
    collectionsList.append('NEW_PAID')
    collectionsList.append('NEW_FREE_GAMES')
    collectionsList.append('NEW_PAID_GAMES')

    countriesList.append('es')
    countriesList.append('de')
    countriesList.append('cn')
    countriesList.append('us')
    countriesList.append('uk')

    for country in countriesList:

        for collection in collectionsList:

            resultList = obtainList(collection, country)

            if resultList is not None:
                cursor.execute(
                    "CREATE TABLE IF NOT EXISTS " + collection + "(id INT AUTO_INCREMENT PRIMARY KEY, appId VARCHAR(255),position INT, country VARCHAR(255), created DATE)")

            totalApps = []
            totalAppsCollection = []
            contPosition = 1

            for app in resultList:

                # Obtenemos los permisos de las aplicaciones

                permissions = scraper.permissions(app['appId'], lang='en', short=True)

                if permissions is not None:
                    totalPermissions = []

                    cursor.execute(
                        "CREATE TABLE IF NOT EXISTS " + 'PERMISSIONS' + "(appId VARCHAR(255) PRIMARY KEY, Location VARCHAR(255),Calendar VARCHAR(255),Microphone VARCHAR(255),Contacts VARCHAR(255),DeviceHistory VARCHAR(255),Camera VARCHAR(255),Storage VARCHAR(255),WiFi VARCHAR(255),PhotosMediaFiles VARCHAR(255), Phone VARCHAR(255), DeviceID VARCHAR(255), SMS VARCHAR(255), Identity VARCHAR(255))")

                    # Buscamos si existe en la tabla esa aplicacion, para actualizarla posteriormente si hubiera algun cambio en sus permisos

                    sql = "SELECT appId FROM PERMISSIONS WHERE appId = %s"

                    val = app['appId']

                    cursor.execute(sql, val)

                    appId = cursor.fetchone()

                    if appId is not None:
                        sql = "DELETE FROM PERMISSIONS WHERE appId = %s"
                        val = appId['appId']
                        cursor.execute(sql, val)
                        connection.commit()
                        print(cursor.rowcount, "registro eliminado.")

                    SMSPermission = 'SMS' in permissions
                    storagePermission = 'Storage' in permissions
                    cameraPermission = 'Camera' in permissions
                    devicePermission = 'Device & app history' in permissions
                    microphonePermission = 'Microphone' in permissions
                    calendarPermission = 'Calendar' in permissions
                    phonePermission = 'Phone' in permissions
                    deviceIDPermission = 'Device ID & call information' in permissions
                    identityPermission = 'Identity' in permissions
                    mediaPermission = 'Photos/Media/Files' in permissions
                    contactsPermission = 'Contacts' in permissions
                    wifiPermission = 'Wi-Fi connection information' in permissions
                    locationPermission = 'Location' in permissions

                    dataPermissions = (app['appId'],
                                       SMSPermission,
                                       storagePermission,
                                       cameraPermission,
                                       devicePermission,
                                       microphonePermission,
                                       calendarPermission,
                                       phonePermission,
                                       deviceIDPermission,
                                       identityPermission,
                                       mediaPermission,
                                       contactsPermission,
                                       wifiPermission,
                                       locationPermission
                                       )
                    totalPermissions.append(dataPermissions)

                    sql = "INSERT INTO PERMISSIONS(appId," \
                          "Location, Calendar, Microphone, Contacts, DeviceHistory, Camera, Storage, WiFi, PhotosMediaFiles, Phone, DeviceID, SMS, Identity ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"

                    val = totalPermissions
                    cursor.executemany(sql, val)
                    connection.commit()
                    print(cursor.rowcount, "permisos insertados.")

                # Obtenemos los 30 comentarios mas recientes de la aplicacion

                reviews = scraper.reviews(app['appId'], lang='es', country='es', num=30)

                if reviews['data'] is not None:
                    totalReviews = []

                    cursor.execute(
                        "CREATE TABLE IF NOT EXISTS " + 'REVIEWS' + "(id VARCHAR(255) PRIMARY KEY, appId VARCHAR(255),userName VARCHAR(255), date VARCHAR(255), score INT, text TEXT)")

                    # Buscamos si existe en la tabla esa aplicacion, para actualizarla posteriormente con 100 nuevos registros

                    sql = "SELECT appId FROM REVIEWS WHERE appId = %s"

                    val = app['appId']

                    cursor.execute(sql, val)

                    appId = cursor.fetchone()

                    if appId is not None:
                        sql = "DELETE FROM REVIEWS WHERE appId = %s"
                        val = appId['appId']
                        cursor.execute(sql, val)
                        connection.commit()
                        print(cursor.rowcount, "registros eliminados.")

                    for review in reviews['data']:
                        dataReviews = (review['id'],
                                       app['appId'],
                                       review['userName'],
                                       review['date'],
                                       review['score'],
                                       review['text'],
                                       )
                        totalReviews.append(dataReviews)

                    sql = "INSERT INTO REVIEWS(id," \
                          "appId," \
                          "userName," \
                          "date," \
                          "score," \
                          "text) VALUES (%s,%s,%s,%s,%s,%s)"

                    val = totalReviews
                    cursor.executemany(sql, val)
                    connection.commit()
                    print(cursor.rowcount, "comentarios insertados.")

                # Obtenemos el packageName si este no existe en la tabla (descargamos, obtenemos, borramos apk)

                sql = "SELECT packageName FROM APLICACIONES WHERE appId = %s"

                val = app['appId']

                cursor.execute(sql, val)

                packageNameQuery = cursor.fetchone()

                if packageNameQuery is not None or cursor.lastrowid is None:

                    # Descarga de APK
                    # idDownload = download_apk(app['appId'])
                    idDownload = None
                    if idDownload is not None:
                        if os.path.exists(idDownload):
                            apk = APK(idDownload)
                            packageName = apk.packagename
                            del apk
                            os.remove(idDownload)
                    else:
                        packageName = None


                else:
                    packageName = None

                # Guardamos la aplicacion
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
                        app['url'],
                        packageName)

                collectionApps = (app['appId'], contPosition, country)

                totalApps.append(apps)
                totalAppsCollection.append(collectionApps)
                contPosition += 1

            sql = "INSERT INTO APLICACIONES(appId," \
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
            cursor.executemany(sql, val)
            connection.commit()
            print(cursor.rowcount, "aplicaciones insertadas.")

            # Guardamos las aplicaciones en la tabla correcta de la coleccion

            sql = "INSERT INTO " + collection + "(appId, position,country,created) VALUES (%s,%s,%s,CURDATE())"
            val = totalAppsCollection
            cursor.executemany(sql, val)
            connection.commit()
            print(cursor.rowcount, "aplicaciones del listado insertadas.")

    connection.close()

    print('test123')
    return "--- %s segundos ---" % (time.time() - start_time)


if __name__ == '__main__':
    app.run(host='0.0.0.0')
