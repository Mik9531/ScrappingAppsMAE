# coding=utf8

from flask import Flask, render_template
import time
import scraper
import pymysql
from bs4 import BeautifulSoup
from urllib.parse import quote_plus
import requests

application = app = Flask(__name__)


def search(query):
    res = requests.get('https://apkpure.com/search?q={}&region='.format(quote_plus(query)), headers={
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.5 (KHTML, like Gecko) '
                      'Version/9.1.2 Safari/601.7.5 '
    }).text
    soup = BeautifulSoup(res, "html.parser")
    search_result = soup.find('div', {'id': 'search-res'}).find('dl', {'class': 'search-dl'})
    if search_result is not None:
        app_tag = search_result.find('p', {'class': 'search-title'}).find('a')
        download_link = 'https://apkpure.com' + app_tag['href']
        return download_link


def download(link):
    res = requests.get(link + '/download?from=details', headers={
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.5 (KHTML, like Gecko) '
                      'Version/9.1.2 Safari/601.7.5 '
    }).text
    soup = BeautifulSoup(res, "html.parser").find('a', {'id': 'download_link'})
    if soup is not None:
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
        id_download = download(download_link)
        print('Download completed!')
        return id_download
    else:
        print('No results')


def obtain_list(collection, category_app, country):
    result_list = scraper.list(collection=collection, category=category_app, num=50, lang='es', country=country,
                               fullDetail=True)
    return result_list


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/testGraphs/')
def create_graphs():
    return render_template('index.html')


@app.route('/listadoApks/')
def my_link():
    global category, countries_list_actual
    start_time = time.time()

    # Creamos la conexion a la base de datos

    connection = pymysql.connect(host='testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com',
                                 user='root',
                                 password='kalandria',
                                 db='test',
                                 charset='utf8mb4',
                                 cursorclass=pymysql.cursors.DictCursor)
    cursor = connection.cursor()

    collections_list = []
    countries_list = []

    # Listado de colecciones de aplicaciones
    collections_list.append('APPLICATION')

    collections_list.append('TOP_FREE')
    collections_list.append('TOP_FREE_GAMES')
    #
    collections_list.append('TOP_PAID')
    collections_list.append('TOP_PAID_GAMES')
    #
    collections_list.append('GROSSING')
    collections_list.append('TOP_GROSSING_GAMES')

    # Listado de paises
    countries_list.append('us')
    countries_list.append('uk')
    countries_list.append('es')
    countries_list.append('de')
    countries_list.append('cn')

    # Creamos la tabla de aplicaciones si no existe
    cursor.execute(
        "CREATE TABLE IF NOT EXISTS " + 'APPS' + "(`appId` varchar(255) NOT NULL PRIMARY KEY,`title` varchar(255) "
                                                 "DEFAULT NULL,`created` datetime DEFAULT NULL, `updated` datetime "
                                                 "DEFAULT NULL, `summary` varchar("
                                                 "255) DEFAULT NULL, `description` varchar(255) DEFAULT NULL, "
                                                 "`installs` varchar(255) DEFAULT NULL, `maxInstalls` int(255) "
                                                 "DEFAULT NULL, `ratings` varchar(255) DEFAULT NULL, "
                                                 "`reviews` varchar(255) DEFAULT NULL, `histogram` varchar(255) "
                                                 "DEFAULT NULL, `price` float(255,0) DEFAULT NULL, `free` varchar("
                                                 "255) DEFAULT NULL, `androidVersionText` varchar(255) DEFAULT NULL, "
                                                 "`developer` varchar(255) DEFAULT NULL, `genre` varchar(255) DEFAULT "
                                                 "NULL, `genreId` varchar(255) DEFAULT NULL, `contentRating` varchar("
                                                 "255) DEFAULT NULL, `adSupported` varchar(255) DEFAULT NULL, "
                                                 "`released` varchar(255) DEFAULT NULL, `recentChanges` varchar(255) "
                                                 "DEFAULT NULL, `editorsChoice` varchar(255) DEFAULT NULL, "
                                                 "`url` varchar(255) DEFAULT NULL,`icon` varchar(255) DEFAULT NULL)")

    # Creamos la tabla de permisos si no existe
    cursor.execute(
        "CREATE TABLE IF NOT EXISTS " + 'PERMISSIONS' + "(appId VARCHAR(255) PRIMARY KEY, Location VARCHAR(255),"
                                                        "Calendar VARCHAR(255),Microphone VARCHAR(255),"
                                                        "Contacts VARCHAR(255),DeviceHistory VARCHAR(255),"
                                                        "Camera VARCHAR(255),Storage VARCHAR(255),WiFi VARCHAR(255),"
                                                        "PhotosMediaFiles VARCHAR(255), Phone VARCHAR(255), "
                                                        "DeviceID VARCHAR(255), SMS VARCHAR(255), Identity VARCHAR("
                                                        "255))")

    # Creamos la tabla de comentarios si no existe
    cursor.execute(
        "CREATE TABLE IF NOT EXISTS " + 'REVIEWS' + "(id VARCHAR(255) PRIMARY KEY, appId VARCHAR(255),userName "
                                                    "VARCHAR(255), date VARCHAR(255), score INT, text TEXT)")

    # Creamos la tabla de relacionados si no existe
    cursor.execute(
        "CREATE TABLE IF NOT EXISTS " + 'RELATEDS' + "(id INT AUTO_INCREMENT PRIMARY KEY, appId VARCHAR(255), relatedApp VARCHAR(255))")

    # Creamos la tabla de imagenes relacionadas si no existe
    cursor.execute(
        "CREATE TABLE IF NOT EXISTS " + 'SCREENSHOTS' + "(id INT AUTO_INCREMENT PRIMARY KEY, appId VARCHAR(255),"
                                                        "urlScreenshot VARCHAR(255))")

    # Creamos la tabla de puntuaciones
    cursor.execute(
        "CREATE TABLE IF NOT EXISTS " + 'SCORES' + "(appId VARCHAR(255) PRIMARY KEY, "
                                                   "score float(255,2), created DATE)")

    for collection in collections_list:

        if collection == 'GROSSING':
            table_colection = 'TOP_GROSSING'
        elif collection == 'APPLICATION':
            table_colection = 'TOP_APPLICATIONS'
            category = collection
            countries_list_actual = ['us']
            collection = None
        else:
            table_colection = collection
            category = None
            countries_list_actual = countries_list

        # Creamos la tabla de la coleccion actual
        cursor.execute(
            "CREATE TABLE IF NOT EXISTS " + table_colection + "(id INT AUTO_INCREMENT PRIMARY KEY, appId VARCHAR(255),"
                                                              "position INT, country VARCHAR(255), created DATE)")

        for country in countries_list_actual:

            result_list = obtain_list(collection, category, country)

            if country == 'es':
                country = 'ESP'
            elif country == 'uk':
                country = 'GRB'
            elif country == 'cn':
                country = 'CHN'
            elif country == 'de':
                country = 'DEU'
            elif country == 'us':
                country = 'USA'

            total_apps = []
            total_apps_collection = []
            cont_position = 1  # Marcara la posicion de la aplicacion en la coleccion

            if result_list is not None:
                for actual_app in result_list:
                    total_relateds = []
                    total_screenshots = []
                    total_scores = []

                    # Guardamos la puntuacion de la aplicacion actual
                    score_get = actual_app.get('score')
                    if score_get is not None:
                        score = round(actual_app['score'], 2)
                        data_scores = (actual_app['appId'],
                                       score
                                       )
                        total_scores.append(data_scores)

                        sql = "INSERT INTO SCORES (appId," \
                              "score, created) VALUES (%s,%s,NOW()) ON " \
                              "DUPLICATE KEY UPDATE created = NOW()"

                        val = total_scores
                        cursor.executemany(sql, val)
                        connection.commit()
                        print(cursor.rowcount, "puntuacion insertada")

                    # Guardamos las urls de las capturas de la aplicacion actual
                    if actual_app['screenshots'] is not None:
                        for actual_screenshot in actual_app['screenshots']:
                            data_screenshots = (actual_app['appId'],
                                                actual_screenshot
                                                )
                            total_screenshots.append(data_screenshots)

                        sql = "INSERT INTO SCREENSHOTS (appId," \
                              "urlScreenshot) VALUES (%s,%s)"

                        val = total_screenshots
                        cursor.executemany(sql, val)
                        connection.commit()
                        print(cursor.rowcount, "capturas insertadas.")

                    # Obtenemos las 5 primeras aplicaciones similares a la aplicacion actual

                    # Buscamos si existe en la tabla esa aplicacion, para no repetir la insercion

                    sql = "SELECT appId FROM RELATEDS WHERE appId = %s"

                    val = actual_app['appId']

                    cursor.execute(sql, val)

                    app_id = cursor.fetchone()

                    if app_id is None:

                        try:
                            similars = scraper.similar(actual_app['appId'], lang='es', fullDetail=False)
                        except Exception:
                            similars = None
                        if similars is not None:
                            five_similars = similars[0:5]

                            for actual_similar in five_similars:
                                data_relateds = (actual_app['appId'],
                                                 actual_similar['appId']
                                                 )
                                total_relateds.append(data_relateds)

                            sql = "INSERT INTO RELATEDS(appId," \
                                  "relatedApp) VALUES (%s,%s)"

                            val = total_relateds
                            cursor.executemany(sql, val)
                            connection.commit()
                            print(cursor.rowcount, "relacionados insertados.")

                    # Obtenemos los permisos de la aplicacion actual

                    permissions = scraper.permissions(actual_app['appId'], lang='en', short=True)

                    if permissions is not None:
                        total_permissions = []

                        # Buscamos si existe en la tabla esa aplicacion, para actualizarla posteriormente si hubiera
                        # algun cambio en sus permisos

                        sql = "SELECT appId FROM PERMISSIONS WHERE appId = %s"

                        val = actual_app['appId']

                        cursor.execute(sql, val)

                        app_id = cursor.fetchone()

                        if app_id is not None:
                            sql = "DELETE FROM PERMISSIONS WHERE appId = %s"
                            val = app_id['appId']
                            cursor.execute(sql, val)
                            connection.commit()
                            print(cursor.rowcount, "registro eliminado.")

                        sms_permission = 'SMS' in permissions
                        storage_permission = 'Storage' in permissions
                        camera_permission = 'Camera' in permissions
                        device_permission = 'Device & app history' in permissions
                        microphone_permission = 'Microphone' in permissions
                        calendar_permission = 'Calendar' in permissions
                        phone_permission = 'Phone' in permissions
                        device_id_permission = 'Device ID & call information' in permissions
                        identity_permission = 'Identity' in permissions
                        media_permission = 'Photos/Media/Files' in permissions
                        contacts_permission = 'Contacts' in permissions
                        wifi_permission = 'Wi-Fi connection information' in permissions
                        location_permission = 'Location' in permissions

                        data_permissions = (actual_app['appId'],
                                            sms_permission,
                                            storage_permission,
                                            camera_permission,
                                            device_permission,
                                            microphone_permission,
                                            calendar_permission,
                                            phone_permission,
                                            device_id_permission,
                                            identity_permission,
                                            media_permission,
                                            contacts_permission,
                                            wifi_permission,
                                            location_permission
                                            )
                        total_permissions.append(data_permissions)

                        sql = "INSERT INTO PERMISSIONS(appId," \
                              "Location, Calendar, Microphone, Contacts, DeviceHistory, Camera, Storage, WiFi, " \
                              "PhotosMediaFiles, Phone, DeviceID, SMS, Identity ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s," \
                              "%s," \
                              "%s,%s,%s,%s) "

                        val = total_permissions
                        cursor.executemany(sql, val)
                        connection.commit()
                        print(cursor.rowcount, "permisos insertados.")

                    # Obtenemos los 30 comentarios mas recientes de la aplicacion

                    reviews = scraper.reviews(actual_app['appId'], lang='es', country='es', num=30)

                    if reviews['data'] is not None:
                        total_reviews = []

                        # Buscamos si existe en la tabla esa aplicacion, para actualizarla posteriormente con 100 nuevos
                        # registros

                        sql = "SELECT appId FROM REVIEWS WHERE appId = %s"

                        val = actual_app['appId']

                        cursor.execute(sql, val)

                        app_id = cursor.fetchone()

                        if app_id is not None:
                            sql = "DELETE FROM REVIEWS WHERE appId = %s"
                            val = app_id['appId']
                            cursor.execute(sql, val)
                            connection.commit()
                            print(cursor.rowcount, "registros eliminados.")

                        for review in reviews['data']:
                            data_reviews = (review['id'],
                                            actual_app['appId'],
                                            review['userName'],
                                            review['date'],
                                            review['score'],
                                            review['text'],
                                            )
                            total_reviews.append(data_reviews)

                        sql = "INSERT INTO REVIEWS(id," \
                              "appId," \
                              "userName," \
                              "date," \
                              "score," \
                              "text) VALUES (%s,%s,%s,%s,%s,%s)"

                        val = total_reviews
                        cursor.executemany(sql, val)
                        connection.commit()
                        print(cursor.rowcount, "comentarios insertados.")

                    # Obtenemos el packageName si este no existe en la tabla (descargamos, obtenemos, borramos apk) (
                    # actualmente desactivado por demora)

                    # sql = "SELECT packageName FROM APPS WHERE appId = %s"
                    #
                    # val = actual_app['appId']
                    #
                    # cursor.execute(sql, val)
                    #
                    # package_name_query = cursor.fetchone()
                    #
                    # if package_name_query is not None or cursor.lastrowid is None:
                    #
                    #     # Descarga de APK
                    #     id_download = download_apk(actual_app['appId'])
                    #     # id_download = None
                    #     if id_download is not None:
                    #         if os.path.exists(id_download):
                    #             apk = APK(id_download)
                    #             package_name = apk.packagename
                    #             del apk
                    #             os.remove(id_download)
                    #     else:
                    #         package_name = None
                    #
                    #
                    # else:
                    #     package_name = None

                    # Guardamos la aplicacion
                    ratings = actual_app.get('ratings')
                    reviews = actual_app.get('reviews')

                    apps = (actual_app['appId'],
                            actual_app['title'],
                            actual_app['summary'],
                            actual_app['description'].encode(),
                            actual_app['installs'],
                            actual_app['maxInstalls'],
                            ratings,
                            reviews,
                            actual_app['price'],
                            actual_app['free'],
                            actual_app['androidVersionText'],
                            actual_app['developer'],
                            actual_app['genre'],
                            actual_app['genreId'],
                            actual_app['contentRating'],
                            actual_app['adSupported'],
                            actual_app.get('recentChanges'),
                            actual_app.get('released'),
                            actual_app['editorsChoice'],
                            actual_app['url'],
                            actual_app['icon']
                            )

                    collection_apps = (actual_app['appId'], cont_position, country)

                    total_apps.append(apps)
                    total_apps_collection.append(collection_apps)
                    cont_position += 1

                sql = "INSERT INTO APPS (appId," \
                      "title," \
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
                      "icon," \
                      "created) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,NOW()) ON " \
                      "DUPLICATE KEY UPDATE updated = NOW()," \
                      "title=VALUES(title), " \
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
                      "url=VALUES(url), icon=VALUES(icon)"

                val = total_apps
                cursor.executemany(sql, val)
                connection.commit()
                print(cursor.rowcount, "aplicaciones insertadas.")

                # Guardamos las aplicaciones en la tabla correcta de la coleccion

                sql = "INSERT INTO " + table_colection + "(appId, position,country,created) VALUES (%s,%s,%s,CURDATE())"
                val = total_apps_collection
                cursor.executemany(sql, val)
                connection.commit()
                print(cursor.rowcount, "aplicaciones del listado insertadas.")

    connection.close()

    return "Carga de datos realizada correctamente en %s segundos " % (time.time() - start_time)


if __name__ == '__main__':
    app.run()
