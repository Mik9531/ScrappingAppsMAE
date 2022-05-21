from flask import Flask, render_template
import os
import time
import scraper
import pymysql
from bs4 import BeautifulSoup
from urllib.parse import quote_plus
import requests
from pyaxmlparser import APK

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


def obtain_list(collection, country):
    result = scraper.list(collection=collection, num=500, lang='es', country=country, fullDetail=False)

    # time.sleep(2.5)

    return result


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/listadoApks/')
def my_link():
    global category
    start_time = time.time()

    # Creamos la conexion a la base de datos

    connection = pymysql.connect(host='localhost',
                                 user='root',
                                 password='kalandria',
                                 db='testPy2',
                                 charset='utf8mb4',
                                 cursorclass=pymysql.cursors.DictCursor)
    cursor = connection.cursor()

    collections_list = []
    check_apps = []

    collections_list.append('TOP_FREE')
    collections_list.append('TOP_FREE_GAMES')

    collections_list.append('TOP_PAID')
    collections_list.append('TOP_PAID_GAMES')

    collections_list.append('GROSSING')
    collections_list.append('TOP_GROSSING_GAMES')

    collections_list.append('TRENDING')

    collections_list.append('NEW_FREE')
    collections_list.append('NEW_FREE_GAMES')

    collections_list.append('NEW_PAID')
    collections_list.append('NEW_PAID_GAMES')

    countries_list = 1

    # Creamos la tabla de aplicaciones si no existe
    cursor.execute(
        "CREATE TABLE IF NOT EXISTS " + 'APPS' + "(`appId` varchar(255) NOT NULL PRIMARY KEY,`title` varchar(255) "
                                                 "DEFAULT NULL,`created` datetime DEFAULT NULL, `updated` datetime "
                                                 "DEFAULT NULL, `score` float(255,2) DEFAULT NULL, `summary` varchar("
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

    for collection in collections_list:

        print(collection)

        if collection == 'GROSSING':
            table_colection = 'TOP_GROSSING'
        else:
            table_colection = collection
            category = None

            # Creamos la tabla de la coleccion actual
            cursor.execute(
                "CREATE TABLE IF NOT EXISTS " + table_colection + "(id INT AUTO_INCREMENT PRIMARY KEY, appId VARCHAR(255),"
                                                                  "position INT, country VARCHAR(255), created DATE)")

            countries = "AF,AX,AL,DZ,AS,AD,AO,AI,AQ,AG,AR,AM,AW,AU,AT,AZ,BH,BS,BD,BB,BY,BE,BZ,BJ,BM,BT,BO,BQ,BA,BW,BV,BR,IO,BN,BG,BF,BI,KH,CM,CA,CV,KY,CF,TD,CL,CN,CX,CC,CO,KM,CG,CD,CK,CR,CI,HR,CU,CW,CY,CZ,DK,DJ,DM,DO,EC,EG,SV,GQ,ER,EE,ET,FK,FO,FJ,FI,FR,GF,PF,TF,GA,GM,GE,DE,GH,GI,GR,GL,GD,GP,GU,GT,GG,GN,GW,GY,HT,HM,VA,HN,HK,HU,IS,IN,ID,IR,IQ,IE,IM,IL,IT,JM,JP,JE,JO,KZ,KE,KI,KP,KR,KW,KG,LA,LV,LB,LS,LR,LY,LI,LT,LU,MO,MK,MG,MW,MY,MV,ML,MT,MH,MQ,MR,MU,YT,MX,FM,MD,MC,MN,ME,MS,MA,MZ,MM,NA,NR,NP,NL,NC,NZ,NI,NE,NG,NU,NF,MP,NO,OM,PK,PW,PS,PA,PG,PY,PE,PH,PN,PL,PT,PR,QA,RE,RO,RU,RW,BL,SH,KN,LC,MF,PM,VC,WS,SM,ST,SA,SN,RS,SC,SL,SG,SX,SK,SI,SB,SO,ZA,GS,SS,ES,LK,SD,SR,SJ,SZ,SE,CH,SY,TW,TJ,TZ,TH,TL,TG,TK,TO,TT,TN,TR,TM,TC,TV,UG,UA,AE,GB,US,UM,UY,UZ,VU,VE,VN,VG,VI,WF,EH,YE,ZM,ZW"

            countries = countries.split(',')

            if countries is not None:
                for country in countries:

                    total_apps_collection = []

                    cont_position = 1  # Marcara la posicion de la aplicacion en la coleccion

                    cont_list = 0  # Marcara la posicion de la aplicacion en la coleccion

                    result_list = obtain_list(collection, country)

                    print(country)
                    cont_list += 1

                    for actual_app in result_list:

                        collection_apps = (actual_app['appId'], cont_position, country)
                        cont_position += 1

                        total_apps_collection.append(collection_apps)

                        checkRelateds = False

                        if actual_app['appId'] not in check_apps:
                            check_apps.append(actual_app['appId'])
                            checkRelateds = True

                        if checkRelateds:
                            total_relateds = []
                            total_apps = []
                            total_apps_related = []

                            # Obtenemos las 5 primeras aplicaciones similares a la aplicacion actual

                            try:
                                similars = scraper.similar(actual_app['appId'], lang='es', fullDetail=False)
                            except Exception:
                                similars = []
                            if len(similars):

                                for actual_similar in similars:

                                    checkActualRelated = False
                                    if actual_similar['appId'] not in check_apps:
                                        check_apps.append(actual_similar['appId'])
                                        checkActualRelated = True

                                    if checkActualRelated:
                                        data_relateds = (actual_app['appId'],
                                                         actual_similar['appId']
                                                         )
                                        total_relateds.append(data_relateds)

                                        # Guardamos la aplicacion
                                        score = actual_similar.get('score')
                                        ratings = actual_similar.get('ratings')
                                        reviews = actual_similar.get('reviews')
                                        summary = actual_similar.get('summary')

                                        if score is not None:
                                            score = round(score, 2)

                                        apps = (actual_similar['appId'],
                                                actual_similar['title'],
                                                score,
                                                summary,
                                                # actual_app['description'].encode(),
                                                # actual_app['installs'],
                                                # actual_app['maxInstalls'],
                                                # ratings,
                                                # reviews,
                                                actual_similar['price'],
                                                actual_similar['free'],
                                                # actual_app['androidVersionText'],
                                                actual_similar['developer'],
                                                # actual_app['genre'],
                                                # actual_app['genreId'],
                                                # actual_app['contentRating'],
                                                # actual_app['adSupported'],
                                                # actual_app.get('recentChanges'),
                                                # actual_app.get('released'),
                                                # actual_app['editorsChoice'],
                                                actual_similar['url'],
                                                actual_similar['icon']
                                                )

                                        total_apps_related.append(apps)

                                sql = "INSERT INTO RELATEDS(appId," \
                                      "relatedApp) VALUES (%s,%s)"

                                val = total_relateds
                                cursor.executemany(sql, val)
                                connection.commit()
                                print(cursor.rowcount, "relacionados insertados.")

                                sql = "INSERT INTO APPS (appId," \
                                      "title," \
                                      "score," \
                                      "summary," \
                                      "price," \
                                      "free," \
                                      "developer," \
                                      "url," \
                                      "icon," \
                                      "created) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,NOW()) ON " \
                                      "DUPLICATE KEY UPDATE updated = NOW()," \
                                      "title=VALUES(title), " \
                                      "score=VALUES(score), " \
                                      "summary=VALUES(summary), " \
                                      "price=VALUES(price), " \
                                      "free=VALUES(free), " \
                                      "url=VALUES(url), icon=VALUES(icon)"

                                val = total_apps_related
                                cursor.executemany(sql, val)
                                connection.commit()
                                print(cursor.rowcount, "aplicaciones relacionadas insertadas.")
                            #
                            # # Obtenemos los permisos de la aplicacion actual
                            #
                            # permissions = scraper.permissions(actual_app['appId'], lang='en', short=True)
                            #
                            # if permissions is not None:
                            #     total_permissions = []
                            #
                            #     # Buscamos si existe en la tabla esa aplicacion, para actualizarla posteriormente si hubiera
                            #     # algun cambio en sus permisos
                            #
                            #     sql = "SELECT appId FROM PERMISSIONS WHERE appId = %s"
                            #
                            #     val = actual_app['appId']
                            #
                            #     cursor.execute(sql, val)
                            #
                            #     app_id = cursor.fetchone()
                            #
                            #     if app_id is not None:
                            #         sql = "DELETE FROM PERMISSIONS WHERE appId = %s"
                            #         val = app_id['appId']
                            #         cursor.execute(sql, val)
                            #         connection.commit()
                            #         print(cursor.rowcount, "registro eliminado.")
                            #
                            #     sms_permission = 'SMS' in permissions
                            #     storage_permission = 'Storage' in permissions
                            #     camera_permission = 'Camera' in permissions
                            #     device_permission = 'Device & app history' in permissions
                            #     microphone_permission = 'Microphone' in permissions
                            #     calendar_permission = 'Calendar' in permissions
                            #     phone_permission = 'Phone' in permissions
                            #     device_id_permission = 'Device ID & call information' in permissions
                            #     identity_permission = 'Identity' in permissions
                            #     media_permission = 'Photos/Media/Files' in permissions
                            #     contacts_permission = 'Contacts' in permissions
                            #     wifi_permission = 'Wi-Fi connection information' in permissions
                            #     location_permission = 'Location' in permissions
                            #
                            #     data_permissions = (actual_app['appId'],
                            #                         sms_permission,
                            #                         storage_permission,
                            #                         camera_permission,
                            #                         device_permission,
                            #                         microphone_permission,
                            #                         calendar_permission,
                            #                         phone_permission,
                            #                         device_id_permission,
                            #                         identity_permission,
                            #                         media_permission,
                            #                         contacts_permission,
                            #                         wifi_permission,
                            #                         location_permission
                            #                         )
                            #     total_permissions.append(data_permissions)
                            #
                            #     sql = "INSERT INTO PERMISSIONS(appId," \
                            #           "Location, Calendar, Microphone, Contacts, DeviceHistory, Camera, Storage, WiFi, " \
                            #           "PhotosMediaFiles, Phone, DeviceID, SMS, Identity ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s," \
                            #           "%s,%s,%s,%s) "
                            #
                            #     val = total_permissions
                            #     cursor.executemany(sql, val)
                            #     connection.commit()
                            #     print(cursor.rowcount, "permisos insertados.")
                            #
                            # # Obtenemos los 30 comentarios mas recientes de la aplicacion
                            #
                            # reviews = scraper.reviews(actual_app['appId'], lang='es', country='es', num=30)
                            #
                            # if reviews['data'] is not None:
                            #     total_reviews = []
                            #
                            #     # Buscamos si existe en la tabla esa aplicacion, para actualizarla posteriormente con 100 nuevos
                            #     # registros
                            #
                            #     sql = "SELECT appId FROM REVIEWS WHERE appId = %s"
                            #
                            #     val = actual_app['appId']
                            #
                            #     cursor.execute(sql, val)
                            #
                            #     app_id = cursor.fetchone()
                            #
                            #     if app_id is not None:
                            #         sql = "DELETE FROM REVIEWS WHERE appId = %s"
                            #         val = app_id['appId']
                            #         cursor.execute(sql, val)
                            #         connection.commit()
                            #         print(cursor.rowcount, "registros eliminados.")
                            #
                            #     for review in reviews['data']:
                            #         data_reviews = (review['id'],
                            #                         actual_app['appId'],
                            #                         review['userName'],
                            #                         review['date'],
                            #                         review['score'],
                            #                         review['text'],
                            #                         )
                            #         total_reviews.append(data_reviews)
                            #
                            #     sql = "INSERT INTO REVIEWS(id," \
                            #           "appId," \
                            #           "userName," \
                            #           "date," \
                            #           "score," \
                            #           "text) VALUES (%s,%s,%s,%s,%s,%s)"
                            #
                            #     val = total_reviews
                            #     cursor.executemany(sql, val)
                            #     connection.commit()
                            #     print(cursor.rowcount, "comentarios insertados.")
                            #
                            # # Obtenemos el packageName si este no existe en la tabla (descargamos, obtenemos, borramos apk) (actualmente desactivado por demora)
                            #
                            # # sql = "SELECT packageName FROM APPS WHERE appId = %s"
                            # #
                            # # val = actual_app['appId']
                            # #
                            # # cursor.execute(sql, val)
                            # #
                            # # package_name_query = cursor.fetchone()
                            # #
                            # # if package_name_query is not None or cursor.lastrowid is None:
                            # #
                            # #     # Descarga de APK
                            # #     id_download = download_apk(actual_app['appId'])
                            # #     # id_download = None
                            # #     if id_download is not None:
                            # #         if os.path.exists(id_download):
                            # #             apk = APK(id_download)
                            # #             package_name = apk.packagename
                            # #             del apk
                            # #             os.remove(id_download)
                            # #     else:
                            # #         package_name = None
                            # #
                            # #
                            # # else:
                            # #     package_name = None

                            # Guardamos la aplicacion
                            score = actual_app.get('score')
                            ratings = actual_app.get('ratings')
                            reviews = actual_app.get('reviews')
                            summary = actual_app.get('summary')

                            if score is not None:
                                score = round(score, 2)

                            apps = (actual_app['appId'],
                                    actual_app['title'],
                                    score,
                                    summary,
                                    # actual_app['description'].encode(),
                                    # actual_app['installs'],
                                    # actual_app['maxInstalls'],
                                    # ratings,
                                    # reviews,
                                    actual_app['price'],
                                    actual_app['free'],
                                    # actual_app['androidVersionText'],
                                    actual_app['developer'],
                                    # actual_app['genre'],
                                    # actual_app['genreId'],
                                    # actual_app['contentRating'],
                                    # actual_app['adSupported'],
                                    # actual_app.get('recentChanges'),
                                    # actual_app.get('released'),
                                    # actual_app['editorsChoice'],
                                    actual_app['url'],
                                    actual_app['icon']
                                    )

                            total_apps.append(apps)

                            sql = "INSERT INTO APPS (appId," \
                                  "title," \
                                  "score," \
                                  "summary," \
                                  "price," \
                                  "free," \
                                  "developer," \
                                  "url," \
                                  "icon," \
                                  "created) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,NOW()) ON " \
                                  "DUPLICATE KEY UPDATE updated = NOW()," \
                                  "title=VALUES(title), " \
                                  "score=VALUES(score), " \
                                  "summary=VALUES(summary), " \
                                  "price=VALUES(price), " \
                                  "free=VALUES(free), " \
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
