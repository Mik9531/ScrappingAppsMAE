from flask import Flask, render_template

app = Flask(__name__)

import scraper

import pymysql

import array as arr


def obtainList():
    resultList = scraper.list('TOP_FREE', None, None, 500, 'es', 'US', True)
    return resultList


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/listadoApks/')
def my_link():
    print('Enlace Clickado')

    connection = pymysql.connect(host='localhost',
                                 user='root',
                                 password='kalandria',
                                 db='testpy',
                                 charset='utf8mb4',
                                 cursorclass=pymysql.cursors.DictCursor)
    cursor = connection.cursor()

    resultList = obtainList()

    apps = ()

    totalApps = []

    for app in resultList:
        apps = (app['appId'], app['title'])
        totalApps.append(apps)

    sql = "INSERT INTO Aplicaciones(appId,title,created) VALUES (%s,%s,NOW()) ON DUPLICATE KEY UPDATE updated = NOW()"
    val = totalApps
    cursor.executemany(sql, val)
    connection.commit()
    print(cursor.rowcount, "record inserted.")
    connection.close()

    return 'Terminado'


if __name__ == '__main__':
    app.run(debug=True)
