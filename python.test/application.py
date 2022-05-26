# coding=utf8


import time
from urllib.parse import quote_plus

import os
import pymysql
import requests
import scraper
from bs4 import BeautifulSoup
from flask import Flask, render_template
# from pyaxmlparser import APK
from androguard.core.bytecodes.apk import APK
from androguard.core.bytecodes.dvm import DalvikVMFormat
from androguard.core.analysis.analysis import Analysis
from androguard.decompiler.dad.decompile import DvMethod
from google_play_scraper import app

application = Flask(__name__)


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
    result = []
    cont_iter = 0

    while bool(result) is False and cont_iter < 10:
        result = scraper.list()
        cont_iter += 1

    return result


@application.route('/')
def index():
    return render_template('index.html')


@application.route('/listadoApks/')
def my_link():
    global result_list
    start_time = time.time()

    # Creamos la conexion a la base de datos

    connection = pymysql.connect(host='localhost',
                                 user='root',
                                 password='kalandria',
                                 db='testPy2',
                                 charset='utf8mb4',
                                 cursorclass=pymysql.cursors.DictCursor)
    cursor = connection.cursor()

    sql = "SELECT appId FROM APPS"

    cursor.execute(sql)

    list_already_apps = [item['appId'] for item in cursor.fetchall()]

    sql = "SELECT appId FROM RELATEDS GROUP BY appId"

    cursor.execute(sql)

    list_already_relateds = [item['appId'] for item in cursor.fetchall()]

    sql = "SELECT appId FROM PERMISSIONS GROUP BY appId"

    cursor.execute(sql)

    list_already_permissions = [item['appId'] for item in cursor.fetchall()]

    sql = "SELECT appId FROM REVIEWS GROUP BY appId"

    cursor.execute(sql)

    list_already_reviews = [item['appId'] for item in cursor.fetchall()]

    collections_list = []
    check_permissions = []
    check_review_app = []

    collections_list.append('TOP_FREE')
    collections_list.append('TOP_FREE_GAMES')

    collections_list.append('TOP_PAID')
    collections_list.append('TOP_PAID_GAMES')

    collections_list.append('GROSSING')
    collections_list.append('TOP_GROSSING_GAMES')

    collections_list.append('NEW_FREE')
    collections_list.append('NEW_FREE_GAMES')

    collections_list.append('NEW_PAID')
    collections_list.append('NEW_PAID_GAMES')

    # Creamos la tabla de aplicaciones si no existe
    cursor.execute(
        "CREATE TABLE IF NOT EXISTS " + 'APPS' + "(`appId` varchar(255) NOT NULL PRIMARY KEY,`title` varchar(255) "
                                                 "DEFAULT NULL,`created` datetime DEFAULT NULL, `updated` datetime "
                                                 "DEFAULT NULL, `score` float(255,2) DEFAULT NULL, `summary` varchar("
                                                 "255) DEFAULT NULL,"
                                                 "`price` float(255,0) DEFAULT NULL, `free` varchar("
                                                 "255) DEFAULT NULL,"
                                                 "`developer` varchar(255) DEFAULT NULL, `genre` varchar(255) DEFAULT "
                                                 "NULL,"
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

    # Creamos la tabla de puntuaciones
    cursor.execute(
        "CREATE TABLE IF NOT EXISTS " + 'SCORES' + "(appId VARCHAR(255) PRIMARY KEY, "
                                                   "score float(255,2), created DATE)")

    for collection in collections_list:

        print(collection)

        table_collection = collection

        # Creamos la tabla de la coleccion actual
        cursor.execute(
            "CREATE TABLE IF NOT EXISTS " + table_collection + "(id INT AUTO_INCREMENT PRIMARY KEY, appId VARCHAR(255),"
                                                               "position INT, country VARCHAR(255), created DATE)")

        countries = "AF,AX,AL,DZ,AS,AD,AO,AI,AQ,AG,AR,AM,AW,AU,AT,AZ,BH,BS,BD,BB,BY,BE,BZ,BJ,BM,BT,BO,BQ,BA,BW,BV,BR," \
                    "IO,BN,BG,BF,BI,KH,CM,CA,CV,KY,CF,TD,CL,CN,CX,CC,CO,KM,CG,CD,CK,CR,CI,HR,CU,CW,CY,CZ,DK,DJ,DM,DO," \
                    "EC,EG,SV,GQ,ER,EE,ET,FK,FO,FJ,FI,FR,GF,PF,TF,GA,GM,GE,DE,GH,GI,GR,GL,GD,GP,GU,GT,GG,GN,GW,GY,HT," \
                    "HM,VA,HN,HK,HU,IS,IN,ID,IR,IQ,IE,IM,IL,IT,JM,JP,JE,JO,KZ,KE,KI,KP,KR,KW,KG,LA,LV,LB,LS,LR,LY,LI," \
                    "LT,LU,MO,MK,MG,MW,MY,MV,ML,MT,MH,MQ,MR,MU,YT,MX,FM,MD,MC,MN,ME,MS,MA,MZ,MM,NA,NR,NP,NL,NC,NZ,NI," \
                    "NE,NG,NU,NF,MP,NO,OM,PK,PW,PS,PA,PG,PY,PE,PH,PN,PL,PT,PR,QA,RE,RO,RU,RW,BL,SH,KN,LC,MF,PM,VC,WS," \
                    "SM,ST,SA,SN,RS,SC,SL,SG,SX,SK,SI,SB,SO,ZA,GS,SS,ES,LK,SD,SR,SJ,SZ,SE,CH,SY,TW,TJ,TZ,TH,TL,TG,TK," \
                    "TO,TT,TN,TR,TM,TC,TV,UG,UA,AE,GB,US,UM,UY,UZ,VU,VE,VN,VG,VI,WF,EH,YE,ZM,ZW "

        countries = countries.split(',')

        # countries = 'AF,AF'
        #
        # countries = countries.split(',')

        cont_list = 0  # Marcara la posicion de la aplicacion en el listado

        app_details = scraper.app('com.nianticlabs.pokemongo')

        result = app(
            'com.nianticlabs.pokemongo',
            lang='en',  # defaults to 'en'
            country='us'  # defaults to 'us'
        )

        for country in countries:

            total_apps_collection = []

            total_apps = []

            total_scores = []

            total_permissions = []

            total_reviews = []

            cont_position = 1  # Marcara la posicion de la aplicacion en la coleccion

            # Obtenemos los datos de la apliaciÃ³n
            try:
                result_list = obtain_list(collection, country)
            except Exception:
                var = None

            print(country)

            print(str(cont_list) + "/" + str(len(countries)))

            cont_list += 1

            cont_position_actual = 1

            for actual_app in result_list:

                # AÃ±adimos a datos de la coleccion actual

                collection_apps = (actual_app['appId'], cont_position, country)
                cont_position += 1

                total_apps_collection.append(collection_apps)

                print(str(cont_position_actual) + "/" + str(len(result_list)))

                cont_position_actual += 1

                # Controlamos que exista la aplicacion en relacionados para optimizar tiempos

                # if actual_app['appId'] not in list_already_relateds:
                #
                #     app_details = []
                #
                #     checkRelateds = False
                #
                #     if actual_app['appId'] not in check_apps:
                #         check_apps.append(actual_app['appId'])
                #         checkRelateds = True
                #
                #     if checkRelateds:
                #         total_relateds = []
                #         total_apps = []
                #         total_apps_related = []
                #         cont_iter = 0
                #         similars = []
                #
                #         # Obtenemos las aplicaciones similares a la aplicacion actual
                #         while bool(similars) is False and cont_iter < 5:
                #             try:
                #                 similars = scraper.similar(actual_app['appId'], lang='es', fullDetail=False)
                #                 cont_iter += 1
                #             except Exception:
                #                 similars = []
                #                 cont_iter += 1
                #
                #         if len(similars):
                #
                #             total_permissions = []
                #             total_reviews = []
                #
                #             for actual_similar in similars:
                #
                #                 check_actual_related = False
                #                 if actual_similar['appId'] not in check_apps:
                #                     check_apps.append(actual_similar['appId'])
                #                     check_actual_related = True
                #
                #                 if check_actual_related:
                #                     data_relateds = (actual_app['appId'],
                #                                      actual_similar['appId']
                #                                      )
                #                     total_relateds.append(data_relateds)
                #
                #                     app_details = []
                #                     cont_iter = 0
                #
                #                     while bool(app_details) is False and cont_iter < 10:
                #                         try:
                #                             app_details = scraper.app(appId=actual_similar['appId'], lang='es')
                #                             cont_iter += 1
                #                         except Exception:
                #                             app_details = []
                #                             cont_iter += 1
                #
                #                     if len(app_details):
                #                         description = app_details.get('description')
                #                         ratings = app_details.get('ratings')
                #                         reviews = app_details.get('reviews')
                #                         recentChanges = app_details.get('recentChanges')
                #                         installs = app_details.get('installs')
                #                         maxInstalls = app_details.get('maxInstalls')
                #                         androidVersionText = app_details.get('androidVersionText')
                #                         genre = app_details.get('genre')
                #                         genreId = app_details.get('genreId')
                #                         adSupported = app_details.get('adSupported')
                #                         editorsChoice = app_details.get('editorsChoice')
                #                         contentRating = app_details.get('contentRating')
                #
                #                     # Guardamos la aplicacion
                #                     score = actual_similar.get('score')
                #                     summary = actual_similar.get('summary')
                #
                #                     if score is not None:
                #                         score = round(score, 2)
                #
                #                     apps = (actual_similar['appId'],
                #                             actual_similar['title'],
                #                             score,
                #                             summary,
                #                             actual_similar['price'],
                #                             actual_similar['free'],
                #                             actual_similar['developer'],
                #                             actual_similar['url'],
                #                             actual_similar['icon'],
                #                             description, installs, maxInstalls, ratings,
                #                             reviews, androidVersionText, genre,
                #                             genreId,
                #                             adSupported, recentChanges, released,
                #                             editorsChoice,
                #                             contentRating
                #                             )
                #
                #                     total_apps_related.append(apps)
                #
                #                     # Guardamos la puntuacion de la aplicacion actual
                #                     score_get = actual_similar.get('score')
                #                     if score_get is not None:
                #                         score = round(actual_similar['score'], 2)
                #                         data_scores = (actual_similar['appId'],
                #                                        score
                #                                        )
                #                         total_scores.append(data_scores)
                #
                #                     # Obtenemos los permisos de la aplicacion actual
                #
                #                     if actual_similar['appId'] not in list_already_permissions:
                #
                #                         check_permission_app = False
                #
                #                         if actual_similar['appId'] not in check_permissions:
                #                             check_permissions.append(actual_similar['appId'])
                #                             check_permission_app = True
                #
                #                         if check_permission_app:
                #
                #                             permissions = scraper.permissions(actual_similar['appId'], lang='en',
                #                                                               short=True)
                #
                #                             if permissions is not None:
                #                                 sms_permission = 'SMS' in permissions
                #                                 storage_permission = 'Storage' in permissions
                #                                 camera_permission = 'Camera' in permissions
                #                                 device_permission = 'Device & app history' in permissions
                #                                 microphone_permission = 'Microphone' in permissions
                #                                 calendar_permission = 'Calendar' in permissions
                #                                 phone_permission = 'Phone' in permissions
                #                                 device_id_permission = 'Device ID & call information' in permissions
                #                                 identity_permission = 'Identity' in permissions
                #                                 media_permission = 'Photos/Media/Files' in permissions
                #                                 contacts_permission = 'Contacts' in permissions
                #                                 wifi_permission = 'Wi-Fi connection information' in permissions
                #                                 location_permission = 'Location' in permissions
                #
                #                                 data_permissions = (actual_similar['appId'],
                #                                                     sms_permission,
                #                                                     storage_permission,
                #                                                     camera_permission,
                #                                                     device_permission,
                #                                                     microphone_permission,
                #                                                     calendar_permission,
                #                                                     phone_permission,
                #                                                     device_id_permission,
                #                                                     identity_permission,
                #                                                     media_permission,
                #                                                     contacts_permission,
                #                                                     wifi_permission,
                #                                                     location_permission
                #                                                     )
                #                                 total_permissions.append(data_permissions)
                #
                #                     # Obtenemos los 10 comentarios mas utiles de la aplicacion
                #
                #                     if actual_similar['appId'] not in list_already_reviews:
                #
                #                         check_review = False
                #
                #                         if actual_similar['appId'] not in check_review_app:
                #                             check_review_app.append(actual_similar['appId'])
                #                             check_review = True
                #
                #                         if check_review:
                #
                #                             reviews = scraper.reviews(actual_similar['appId'], lang='es',
                #                                                       country='es',
                #                                                       num=10, sort=scraper.sort['HELPFULNESS'])
                #
                #                             if reviews['data'] is not None:
                #
                #                                 for review in reviews['data']:
                #                                     data_reviews = (review['id'],
                #                                                     actual_similar['appId'],
                #                                                     review['userName'],
                #                                                     review['date'],
                #                                                     review['score'],
                #                                                     review['text'],
                #                                                     )
                #                                     total_reviews.append(data_reviews)
                #
                #             sql = "INSERT INTO RELATEDS(appId," \
                #                   "relatedApp) VALUES (%s,%s)"
                #
                #             val = total_relateds
                #             cursor.executemany(sql, val)
                #             connection.commit()
                #             print(cursor.rowcount, "relacionados insertados.")
                #
                #             sql = "INSERT INTO APPS (appId," \
                #                   "title," \
                #                   "score," \
                #                   "summary," \
                #                   "price," \
                #                   "free," \
                #                   "developer," \
                #                   "url," \
                #                   "icon," \
                #                   "description,installs, maxInstalls, ratings, reviews, androidVersionText, genre, genreId, adSupported, recentChanges, released, editorsChoice, contentRating, " \
                #                   "created) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,NOW()) ON " \
                #                   "DUPLICATE KEY UPDATE updated = NOW()," \
                #                   "title=VALUES(title), " \
                #                   "score=VALUES(score), " \
                #                   "summary=VALUES(summary), " \
                #                   "price=VALUES(price), " \
                #                   "free=VALUES(free), " \
                #                   "url=VALUES(url), icon=VALUES(icon), description=VALUES(description), installs=VALUES(installs), maxInstalls=VALUES(maxInstalls), ratings=VALUES(ratings)," \
                #                   "reviews=VALUES(reviews), androidVersionText=VALUES(androidVersionText), genre=VALUES(genre), genreId=VALUES(genreId),adSupported=VALUES(adSupported),recentChanges=VALUES(recentChanges)," \
                #                   "released=VALUES(released), editorsChoice=VALUES(editorsChoice), contentRating=VALUES(contentRating) "
                #
                #         val = total_apps_related
                #         cursor.executemany(sql, val)
                #         connection.commit()
                #         print(cursor.rowcount, "aplicaciones relacionadas insertadas.")
                #
                #         sql = "INSERT INTO SCORES (appId," \
                #               "score, created) VALUES (%s,%s,NOW()) ON " \
                #               "DUPLICATE KEY UPDATE created = NOW()"
                #
                #         val = total_scores
                #         cursor.executemany(sql, val)
                #         connection.commit()
                #         print(cursor.rowcount, "puntuaciones relacionadas insertada")
                #
                #         if len(total_permissions):
                #             sql = "INSERT INTO PERMISSIONS(appId," \
                #                   "Location, Calendar, Microphone, Contacts, DeviceHistory, Camera, Storage, WiFi, " \
                #                   "PhotosMediaFiles, Phone, DeviceID, SMS, Identity ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s," \
                #                   "%s,%s,%s,%s) ON DUPLICATE KEY UPDATE appId = VALUES(appId)"
                #
                #             val = total_permissions
                #             cursor.executemany(sql, val)
                #             connection.commit()
                #             print(cursor.rowcount, "permisos relacionados insertados.")
                #
                #         if len(total_reviews):
                #             sql = "INSERT INTO REVIEWS(id," \
                #                   "appId," \
                #                   "userName," \
                #                   "date," \
                #                   "score," \
                #                   "text) VALUES (%s,%s,%s,%s,%s,%s)"
                #
                #             val = total_reviews
                #             cursor.executemany(sql, val)
                #             connection.commit()
                #             print(cursor.rowcount, "comentarios relacionados insertados.")

                apk = APK('com.adopteunmec.androides.apk')
                test = APK.get_libraries(apk)
                test2 = APK.get_receivers(apk)
                test3 = APK.get_activities(apk)
                test4 = APK.get_android_resources(apk)
                test5 = APK.get_dex(apk)
                test6 = APK.get_features(apk)
                test7 = APK.get_providers(apk)
                test8 = APK.get_files(apk)

                test = 1
                #
                #
                # # Descarga de APK
                # id_download = download_apk('com.adopteunmec.androides')
                # # id_download = None
                # if id_download is not None:
                #     if os.path.exists(id_download):
                #         apk = APK(id_download)
                #         test = APK.get_libraries(apk)
                #         package_name = apk.packagename
                #         del apk
                #         os.remove(id_download)
                # else:
                #     package_name = None

                # Obtenemos los detalles adicionales de la aplicaciÃ³n si no se encuentra ya en nuestro listado

                if actual_app['appId'] not in list_already_apps:

                    app_details = []
                    cont_iter = 0

                    while bool(app_details) is False and cont_iter < 10:
                        try:
                            app_details = scraper.app(appId=actual_app['appId'], lang='es')
                            cont_iter += 1
                        except Exception:
                            app_details = []
                            cont_iter += 1

                    score = actual_app.get('score')
                    summary = actual_app.get('summary')

                    if len(app_details):
                        description = app_details.get('description')
                        ratings = app_details.get('ratings')
                        reviews = app_details.get('reviews')
                        recentChanges = app_details.get('recentChanges')
                        installs = app_details.get('installs')
                        maxInstalls = app_details.get('maxInstalls')
                        androidVersionText = app_details.get('androidVersionText')
                        genre = app_details.get('genre')
                        genreId = app_details.get('genreId')
                        adSupported = app_details.get('adSupported')
                        editorsChoice = app_details.get('editorsChoice')
                        contentRating = app_details.get('contentRating')
                        released = app_details.get('released')

                    if score is not None:
                        score = round(score, 2)

                    apps = (actual_app['appId'],
                            actual_app['title'],
                            score,
                            summary,
                            actual_app['price'],
                            actual_app['free'],
                            actual_app['developer'],
                            actual_app['url'],
                            actual_app['icon'], description, installs, maxInstalls, ratings,
                            reviews, androidVersionText, genre,
                            genreId,
                            adSupported, recentChanges, released,
                            editorsChoice,
                            contentRating
                            )

                    total_apps.append(apps)

                    # Guardamos la puntuacion de la aplicacion actual
                    # if score is not None:
                    #     score = round(actual_app['score'], 2)
                    #     data_scores = (actual_app['appId'],
                    #                    score
                    #                    )
                    #     total_scores.append(data_scores)

                    # Obtenemos los permisos de la aplicacion actual si no se encuentra ya en permisos

                    if actual_app['appId'] not in list_already_permissions:

                        check_permission_app = False

                        if actual_app['appId'] not in check_permissions:
                            check_permissions.append(actual_app['appId'])
                            check_permission_app = True

                        if check_permission_app:

                            permissions = scraper.permissions(actual_app['appId'], lang='en', short=True)

                            if permissions is not None:
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

                    # Obtenemos los 10 comentarios mas utiles de la aplicacion si no se encuentra ya en comentarios

                    if actual_app['appId'] not in list_already_reviews:

                        check_review = False

                        if actual_app['appId'] not in check_review_app:
                            check_review_app.append(actual_app['appId'])
                            check_review = True

                        if check_review:

                            reviews = scraper.reviews(actual_app['appId'], lang='es', country='es',
                                                      num=10, sort=scraper.sort['HELPFULNESS'])

                            if reviews['data'] is not None:

                                for review in reviews['data']:
                                    data_reviews = (review['id'],
                                                    actual_app['appId'],
                                                    review['userName'],
                                                    review['date'],
                                                    review['score'],
                                                    review['text'],
                                                    )
                                    total_reviews.append(data_reviews)

            # Insertarmos las aplicaciones
            try:
                sql = "INSERT INTO APPS (appId," \
                      "title," \
                      "score," \
                      "summary," \
                      "price," \
                      "free," \
                      "developer," \
                      "url," \
                      "icon," \
                      "description,installs, maxInstalls, ratings, reviews, androidVersionText, genre, genreId, adSupported, recentChanges, released, editorsChoice, contentRating," \
                      "created) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,NOW()) ON " \
                      "DUPLICATE KEY UPDATE updated = NOW()," \
                      "title=VALUES(title), " \
                      "score=VALUES(score), " \
                      "summary=VALUES(summary), " \
                      "price=VALUES(price), " \
                      "free=VALUES(free), " \
                      "url=VALUES(url), icon=VALUES(icon) , description=VALUES(description), installs=VALUES(installs), maxInstalls=VALUES(maxInstalls), ratings=VALUES(ratings)," \
                      "reviews=VALUES(reviews), androidVersionText=VALUES(androidVersionText), genre=VALUES(genre), genreId=VALUES(genreId),adSupported=VALUES(adSupported),recentChanges=VALUES(recentChanges)," \
                      "released=VALUES(released), editorsChoice=VALUES(editorsChoice), contentRating=VALUES(contentRating) "

                val = total_apps
                cursor.executemany(sql, val)
                connection.commit()
                print(cursor.rowcount, "aplicaciones insertadas.")

                # Insertamos las puntuaciones
                # sql = "INSERT INTO SCORES (appId," \
                #       "score, created) VALUES (%s,%s,NOW()) ON " \
                #       "DUPLICATE KEY UPDATE created = NOW()"
                #
                # val = total_scores
                # cursor.executemany(sql, val)
                # connection.commit()
                # print(cursor.rowcount, "puntuacion insertada")

                # Insertamos los permisos
                if len(total_permissions):
                    sql = "INSERT INTO PERMISSIONS(appId," \
                          "Location, Calendar, Microphone, Contacts, DeviceHistory, Camera, Storage, WiFi, " \
                          "PhotosMediaFiles, Phone, DeviceID, SMS, Identity ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s," \
                          "%s,%s,%s,%s) ON DUPLICATE KEY UPDATE appId = VALUES(appId)"

                    val = total_permissions
                    cursor.executemany(sql, val)
                    connection.commit()
                    print(cursor.rowcount, "permisos insertados.")

                # Insertamos los comentarios
                if len(total_reviews):
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

                # Guardamos las aplicaciones en la tabla correcta de la coleccion

                sql = "INSERT INTO " + table_collection + "(appId, position,country,created) VALUES (%s,%s,%s,CURDATE())"
                val = total_apps_collection
                cursor.executemany(sql, val)
                connection.commit()
                print(cursor.rowcount, "aplicaciones del listado insertadas.")
            except Exception:
                var = None

    connection.close()

    return "Carga de datos realizada correctamente en %s segundos " % (time.time() - start_time)


if __name__ == '__main__':
    application.run()
