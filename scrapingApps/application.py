# coding=utf8

import shutil
import time
import os
import pymysql
import requests
from bs4 import BeautifulSoup
from flask import Flask, render_template
from androguard.core.bytecodes.apk import APK
from google_play_scraper import app, permissions, reviews
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.support import expected_conditions as EC
import country_converter as coco


cc = coco.CountryConverter()

from pathlib import Path

g_play_url = "https://play.google.com/store/apps/details?id="

application = Flask(__name__)

headers = {
    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36 Safari/537.36'}


def time_passed(start, duration):
    return start + duration <= time.time()


def download_apk(actual_apk):
    eliminateApk = False
    notLink = True

    # Obtenemos el nombre del paquete
    package_id = actual_apk

    # Verificamos que el paquete exista en el Play Store
    g_play_res = requests.get(g_play_url + package_id,
                              headers=headers, allow_redirects=True)
    if g_play_res.status_code != 200:
        notLink = False

    # Buscamos el paquete en la Web
    search_res = requests.get(
        "https://apk.support/download-app-es/" + package_id,
        headers=headers, allow_redirects=True)

    # Verificamos que lo encuentra correctamente
    if search_res.status_code != 200:
        notLink = False

    if notLink is True:

        soup = BeautifulSoup(search_res.content, 'html.parser')

        tbody_children = soup.findAll('a')

        sub_dl_links = []

        # Obtenemos el enlace de descarga de la aplicación
        for item in tbody_children:
            link = item.get('href')
            if link is not None:
                if link.find("playstoreapi.com") != -1:
                    sub_dl_links.append(link)

        if sub_dl_links is not None:
            # download the apk
            print('Downloading ' + package_id)

            # TODO: replace app_name with actual app name
            output_file = "APKS/" + package_id + ".apk"

            r = requests.get(sub_dl_links[0], allow_redirects=True,
                             stream=True)

            with open(output_file, 'wb') as f:
                dl = 0
                start = time.time()

                for chunk in r.iter_content(chunk_size=1024):
                    # Esperamos máximo 60 segundos, para evitar descargas muy lentas
                    if time_passed(start, 60):
                        eliminateApk = True
                        break
                    if chunk:
                        dl += len(chunk)
                        f.write(chunk)
            print('Aplicación descargada')

            print('Aplicación almacenada')
        else:
            output_file = None
    else:
        output_file = None

    if eliminateApk is True:
        os.remove(output_file)
        output_file = None

    return output_file


@application.route('/')
def index():
    return render_template('index.html')


@application.route('/listadoApks/')
def my_link():
    global button, actual_button
    start_time = time.time()
    # Creamos la conexion a la base de datos
    connection = pymysql.connect(host='testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com',
                                 user='root',
                                 password='kalandria',
                                 db='appsData',
                                 charset='utf8mb4',
                                 cursorclass=pymysql.cursors.DictCursor)
    cursor = connection.cursor()

    sql = "SELECT appId FROM PERMISSIONS GROUP BY appId"

    cursor.execute(sql)

    sql = "SELECT appId FROM REVIEWS GROUP BY appId"

    cursor.execute(sql)

    collections_list_name = []

    list_already_reviews = [item['appId'] for item in cursor.fetchall()]

    check_permissions = []
    check_review_app = []

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

    # Ocultamos la ventana que genera chrome con estas opciones
    options = webdriver.ChromeOptions()
    options.add_argument('--no-sandbox')
    options.add_argument('--window-size=1920,1080')
    options.add_argument('--headless')
    options.add_argument('--disable-gpu')
    options.add_argument("--disable-setuid-sandbox")
    options.add_argument('--disable-dev-shm-usage')
    options.add_argument('--ignore-ssl-errors=yes')
    options.add_argument('--ignore-certificate-errors')

    countries = "AF,AX,AL,DZ,AS,AD,AO,AI,AQ,AG,AR,AM,AW,AU,AT,AZ,BH,BS,BD,BB,BY,BE,BZ,BJ,BM,BT,BO,BQ,BA,BW,BV,BR," \
                "IO,BN,BG,BF,BI,KH,CM,CA,CV,KY,CF,TD,CL,CN,CX,CC,CO,KM,CG,CD,CK,CR,CI,HR,CU,CW,CY,CZ,DK,DJ,DM,DO," \
                "EC,EG,SV,GQ,ER,EE,ET,FK,FO,FJ,FI,FR,GF,PF,TF,GA,GM,GE,DE,GH,GI,GR,GL,GD,GP,GU,GT,GG,GN,GW,GY,HT," \
                "HM,VA,HN,HK,HU,IS,IN,ID,IR,IQ,IE,IM,IL,IT,JM,JP,JE,JO,KZ,KE,KI,KP,KR,KW,KG,LA,LV,LB,LS,LR,LY,LI," \
                "LT,LU,MO,MK,MG,MW,MY,MV,ML,MT,MH,MQ,MR,MU,YT,MX,FM,MD,MC,MN,ME,MS,MA,MZ,MM,NA,NR,NP,NL,NC,NZ,NI," \
                "NE,NG,NU,NF,MP,NO,OM,PK,PW,PS,PA,PG,PY,PE,PH,PN,PL,PT,PR,QA,RE,RO,RU,RW,BL,SH,KN,LC,MF,PM,VC,WS," \
                "SM,ST,SA,SN,RS,SC,SL,SG,SX,SK,SI,SB,SO,ZA,GS,SS,ES,LK,SD,SR,SJ,SZ,SE,CH,SY,TW,TJ,TZ,TH,TL,TG,TK," \
                "TO,TT,TN,TR,TM,TC,TV,UG,UA,AE,GB,US,UM,UY,UZ,VU,VE,VN,VG,VI,WF,EH,YE,ZM,ZW "

    countries = countries.split(',')

    cont_countries = 0  # Marcara la posicion de la aplicacion en el listado

    not_actual_apps = []

    current_scraping_apps = []

    collections_list_name.append("")
    collections_list_name.append("TOP_FREE")
    collections_list_name.append("GROSSING")
    collections_list_name.append("TOP_PAID")

    for country in countries:

        driver = webdriver.Chrome(ChromeDriverManager().install(), options=options)

        TOP_FREE = []
        TOP_GROSSING = []
        TOP_PAID = []

        collections_list = []

        print(str(cont_countries) + "/" + str(len(countries)))

        cont_countries += 1

        not_button = True

        url = 'https://play.google.com/store/apps?gl=' + country + '&hl=es'

        country = coco.convert(names=country, to='ISO3')

        print(country)

        not_list_apps = []

        cont_position = 1  # Marcara la posicion de la aplicacion en la coleccion

        # Obtenemos los datos de las aplicaciones gratuitas
        if len(collections_list) == 0:
            driver.get(url)
            time.sleep(5)

            try:
                button = driver.find_elements(by=By.CLASS_NAME, value='ypTNYd')
                WebDriverWait(driver, 10).until(EC.presence_of_all_elements_located((By.CLASS_NAME, 'ypTNYd')))
                actual_button = button[6]
            except Exception:
                not_button = False

            if not_button is True:
                try:
                    actual_button.click()
                    time.sleep(5)

                    elems = driver.find_elements(by=By.TAG_NAME, value='a')


                except Exception:
                    add_list = False
                    actual_button.click()
                    time.sleep(5)

                    elems = driver.find_elements(by=By.TAG_NAME, value='a')

                if len(elems):
                    elems = driver.find_elements(by=By.TAG_NAME, value='a')
                    for elem in elems:
                        href = elem.get_attribute('href')
                        if "details?id" in href:
                            app_id = href.split('id=')[1]
                            if "Posicionamiento" in elem.accessible_name:
                                TOP_FREE.append(app_id)
                            else:
                                if app_id not in not_list_apps:
                                    not_list_apps.append(app_id)

                print("Obtenidos TOP_FREE")
                collections_list_name.append("")
                collections_list.append(not_list_apps)

                collections_list_name.append("TOP_FREE")
                collections_list.append(TOP_FREE)

            not_button = True

            try:
                button = driver.find_elements(by=By.CLASS_NAME, value='ypTNYd')
                WebDriverWait(driver, 10).until(EC.presence_of_all_elements_located((By.CLASS_NAME, 'ypTNYd')))
                actual_button = button[7]
            except Exception:
                not_button = False

            if not_button is True:
                try:
                    actual_button.click()
                    time.sleep(5)

                    elems = driver.find_elements(by=By.TAG_NAME, value='a')

                except Exception:
                    actual_button.click()
                    time.sleep(5)

                    elems = driver.find_elements(by=By.TAG_NAME, value='a')

                if len(elems):
                    for elem in elems:
                        href = elem.get_attribute('href')
                        if "details?id" in href:
                            app_id = href.split('id=')[1]
                            if "Posicionamiento" in elem.accessible_name:
                                TOP_GROSSING.append(app_id)

                print("Obtenidos GROSSING")
                collections_list.append(TOP_GROSSING)
                collections_list_name.append("GROSSING")

            # Obtenemos los datos de las aplicaciones top ventas

            actual_button = True

            try:
                button = driver.find_elements(by=By.CLASS_NAME, value='ypTNYd')
                WebDriverWait(driver, 10).until(EC.presence_of_all_elements_located((By.CLASS_NAME, 'ypTNYd')))
                actual_button = button[8]
            except Exception:
                not_button = False

            if not_button is True:
                try:
                    button[8].click()
                    time.sleep(5)

                    elems = driver.find_elements(by=By.TAG_NAME, value='a')

                except Exception:
                    button[8].click()
                    time.sleep(5)

                    elems = driver.find_elements(by=By.TAG_NAME, value='a')

                if len(elems):
                    elems = driver.find_elements(by=By.TAG_NAME, value='a')
                    for elem in elems:
                        href = elem.get_attribute('href')
                        if "details?id" in href:
                            app_id = href.split('id=')[1]
                            if "Posicionamiento" in elem.accessible_name:
                                TOP_PAID.append(app_id)

                print("Obtenidos TOP_PAID")
                collections_list.append(TOP_PAID)

            driver.close()
            driver.quit()

        cont_list = 0

        for collection in collections_list:

            if len(collection):

                cont_list += 1

                total_apps = []
                total_apps_collection = []

                total_permissions = []
                total_reviews = []

                if (cont_list != 1 and len(total_apps_collection)):
                    table_collection = collection

                    # Creamos la tabla de la coleccion actual
                    cursor.execute(
                        "CREATE TABLE IF NOT EXISTS " + collections_list_name[
                            cont_list] + "(id INT AUTO_INCREMENT PRIMARY KEY, appId VARCHAR(255),"
                                         "position INT, country VARCHAR(255), created DATE)")

                else:
                    not_actual_apps.append(collection)

                cont_position = 1

                for actual_app in collection:

                    # AÃ±adimos a datos de la coleccion actual

                    collection_apps = (actual_app, cont_position, country)

                    total_apps_collection.append(collection_apps)

                    print(str(cont_position) + "/" + str(len(collection)))

                    cont_position += 1

                    # Obtenemos los detalles adicionales de la aplicacion si no se encuentra ya en nuestro listado

                    if actual_app not in current_scraping_apps:

                        current_scraping_apps.append(actual_app)
                        app_details = []
                        cont_iter = 0

                        while bool(app_details) is False and cont_iter < 10:
                            try:
                                app_details = app(app_id=actual_app, lang='es')
                                cont_iter += 1
                            except Exception:
                                app_details = []
                                cont_iter += 1

                        if len(app_details):
                            score = app_details.get('score')
                            summary = app_details.get('summary')
                            description = app_details.get('description')
                            ratings = app_details.get('ratings')
                            reviews_num = app_details.get('reviews')
                            recentChanges = app_details.get('recentChanges')
                            installs = app_details.get('installs')
                            androidVersionText = app_details.get('version')
                            genre = app_details.get('genre')
                            genreId = app_details.get('genreId')
                            adSupported = app_details.get('adSupported')
                            contentRating = app_details.get('contentRating')
                            released = app_details.get('released')

                            if score is not None:
                                score = round(score, 2)

                            # Descargamos la APK si no existe datos de lenguaje de programación en la tabla

                            package_name = None

                            app_details['programmingLanguage'] = ""

                            app_details['libraries'] = ""

                            if (app_details['free'] is True):

                                sql = "SELECT programmingLanguage,libraries FROM APPS WHERE appId = %s"

                                val = actual_app

                                cursor.execute(sql, val)

                                language_exists = cursor.fetchone()
                                try:
                                    if language_exists['programmingLanguage'] is None:

                                        id_download = download_apk(actual_app)
                                        if id_download is not None:
                                            if os.path.exists(id_download):

                                                files_apk = []
                                                remove_files = []

                                                # Obtenemos el lenguaje de programacion usado
                                                apk = APK(id_download)
                                                files_apk = APK.get_files(apk)

                                                # Si el archivo es un XAPK, extraemos para obtener sus datos y posteriormente eliminarlos
                                                if (files_apk[0] == (actual_app + ".apk")):
                                                    remove_files = files_apk
                                                    remove_files.pop(0)
                                                    print("extrayendo apk")
                                                    p = Path(id_download)
                                                    p.rename(p.with_suffix('.zip'))
                                                    shutil.unpack_archive("APKS/" + actual_app + '.zip',
                                                                          extract_dir="APKS")
                                                    apk = APK(id_download)
                                                    files_apk = APK.get_files(apk)
                                                    os.remove("APKS/" + actual_app + '.zip')

                                                    for actual_file in remove_files:
                                                        os.remove("APKS/" + actual_file)

                                                # Obtenemos el lenguaje de programacion usado

                                                if (any("flutter" in string for string in files_apk)):
                                                    app_details['programmingLanguage'] = 'Flutter'
                                                elif any("kotlin" in string for string in files_apk):
                                                    app_details['programmingLanguage'] = 'Kotlin'
                                                else:
                                                    app_details['programmingLanguage'] = 'Java'

                                                if (len(files_apk) == 0):
                                                    app_details['programmingLanguage'] = None

                                                # Obtenemos las librerías externas usadas
                                                libraries = []
                                                if (any("okhttp3" in string for string in files_apk)):
                                                    libraries.append('okhttp3')

                                                if (any("picasso" in string for string in files_apk)):
                                                    libraries.append('picasso')

                                                if (any("jackson" in string for string in files_apk)):
                                                    libraries.append('jackson')

                                                if (any("okio" in string for string in files_apk)):
                                                    libraries.append('okio')

                                                if (any("webrtc" in string for string in files_apk)):
                                                    libraries.append('webrtc')

                                                if (any("exoplayer" in string for string in files_apk)):
                                                    libraries.append('exoplayer')

                                                if (any("firebase" in string for string in files_apk)):
                                                    libraries.append('firebase')

                                                if (any("dagger" in string for string in files_apk)):
                                                    libraries.append('dagger')

                                                if (any("chromium" in string for string in files_apk)):
                                                    libraries.append('chromium')

                                                if (any("spongycastle" in string for string in files_apk)):
                                                    libraries.append('spongycastle')

                                                if (any("facebook" in string for string in files_apk)):
                                                    libraries.append('facebook')

                                                if (any("bolts" in string for string in files_apk)):
                                                    libraries.append('bolts')

                                                if (any("appsflyer" in string for string in files_apk)):
                                                    libraries.append('appsflyer')

                                                if (any("Gson" in string for string in files_apk)):
                                                    libraries.append('Gson')

                                                if (any("jsoup" in string for string in files_apk)):
                                                    libraries.append('jsoup')

                                                if (any("retrofit" in string for string in files_apk)):
                                                    libraries.append('retrofit')

                                                if (any("glide" in string for string in files_apk)):
                                                    libraries.append('glide')

                                                if (any("tensorflow" in string for string in files_apk)):
                                                    libraries.append('tensorflow')

                                                app_details['libraries'] = '|'.join(libraries)

                                                # os.remove(id_download.rsplit('.', 1)[0])

                                                try:
                                                    os.remove(id_download)
                                                    del id_download
                                                except Exception as e:
                                                    print(e)
                                        else:
                                            app_details['programmingLanguage'] = language_exists['programmingLanguage']
                                            app_details['libraries'] = language_exists['libraries']
                                except Exception as e:
                                    print(e)

                            if "appinventor" in actual_app:
                                app_details['programmingLanguage'] = 'appInventor'

                            apps = (app_details['appId'],
                                    app_details['title'],
                                    score,
                                    summary,
                                    app_details['price'],
                                    app_details['free'],
                                    app_details['developer'],
                                    app_details['url'],
                                    app_details['icon'], description, installs, ratings,
                                    reviews_num, androidVersionText, genre,
                                    genreId,
                                    adSupported, recentChanges, released,
                                    contentRating, app_details['programmingLanguage'], app_details['libraries']
                                    )

                            total_apps.append(apps)

                            # Obtenemos los permisos de la aplicacion actual si no se encuentra ya en permisos

                            check_permission_app = False

                            if app_details['appId'] not in check_permissions:
                                check_permissions.append(app_details['appId'])
                                check_permission_app = True

                            if check_permission_app:

                                try:
                                    permissions_data = permissions(app_details['appId'], lang='en')
                                except Exception:
                                    permissions_data = None

                                if permissions_data is not None:
                                    sms_permission = 'SMS' in permissions_data
                                    storage_permission = 'Storage' in permissions_data
                                    camera_permission = 'Camera' in permissions_data
                                    device_permission = 'Device & app history' in permissions_data
                                    microphone_permission = 'Microphone' in permissions_data
                                    calendar_permission = 'Calendar' in permissions_data
                                    phone_permission = 'Phone' in permissions_data
                                    device_id_permission = 'Device ID & call information' in permissions_data
                                    identity_permission = 'Identity' in permissions_data
                                    media_permission = 'Photos/Media/Files' in permissions_data
                                    contacts_permission = 'Contacts' in permissions_data
                                    wifi_permission = 'Wi-Fi connection information' in permissions_data
                                    location_permission = 'Location' in permissions_data

                                    data_permissions = (app_details['appId'],
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

                            if app_details['appId'] not in list_already_reviews:

                                check_review = False

                                if app_details['appId'] not in check_review_app:
                                    check_review_app.append(app_details['appId'])
                                    check_review = True

                                if check_review:

                                    try:
                                        reviews_data = reviews(app_details['appId'], lang='es', country='es',
                                                               count=10)
                                    except Exception:
                                        reviews_data = []
                                        reviews_data[0] = None

                                    if reviews_data[0] is not None:

                                        for review in reviews_data[0]:
                                            data_reviews = (review['reviewId'],
                                                            app_details['appId'],
                                                            review['userName'],
                                                            review['at'],
                                                            review['score'],
                                                            review['content'],
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
                          "description,installs, ratings, reviews, androidVersionText, genre, genreId, adSupported, recentChanges, released, contentRating,programmingLanguage, libraries," \
                          "created) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,NOW()) ON " \
                          "DUPLICATE KEY UPDATE updated = NOW()," \
                          "title=VALUES(title), " \
                          "score=VALUES(score), " \
                          "summary=VALUES(summary), " \
                          "price=VALUES(price), " \
                          "free=VALUES(free), " \
                          "url=VALUES(url), icon=VALUES(icon) , description=VALUES(description), installs=VALUES(installs), ratings=VALUES(ratings)," \
                          "reviews=VALUES(reviews), androidVersionText=VALUES(androidVersionText), genre=VALUES(genre), genreId=VALUES(genreId),adSupported=VALUES(adSupported),recentChanges=VALUES(recentChanges)," \
                          "released=VALUES(released), contentRating=VALUES(contentRating)"

                    val = total_apps
                    cursor.executemany(sql, val)
                    connection.commit()
                    print(cursor.rowcount, "aplicaciones insertadas.")

                    # Insertamos los permisos
                    if len(total_permissions):
                        sql = "INSERT INTO PERMISSIONS(appId," \
                              "SMS, Storage, Camera, DeviceHistory, Microphone, Calendar, Phone, DeviceID, " \
                              "Identity, PhotosMediaFiles, Contacts, WiFi, Location ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s," \
                              "%s,%s,%s,%s) ON DUPLICATE KEY UPDATE appId = VALUES(appId), SMS = VALUES(SMS), Storage = " \
                              "VALUES(Storage), Camera = VALUES(Camera), DeviceHistory = VALUES(DeviceHistory), " \
                              "Microphone = VALUES(Microphone), Calendar = VALUES(Calendar), Phone = VALUES(Phone), " \
                              "DeviceID = VALUES(DeviceID), Identity = VALUES(Identity), PhotosMediaFiles = VALUES(PhotosMediaFiles), Contacts = VALUES(Contacts), WiFi = VALUES(WiFi), Location = VALUES(Location) "

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

                    if (cont_list != 1 and len(total_apps_collection)):
                        sql = "INSERT INTO " + collections_list_name[
                            cont_list - 1] + "(appId, position,country,created) VALUES (%s,%s,%s,CURDATE())"
                        val = total_apps_collection
                        cursor.executemany(sql, val)
                        connection.commit()
                        print(cursor.rowcount, "aplicaciones del listado insertadas.")
                        total_apps_collection = []
                        cont_position = 0
                except Exception as e:
                    print(e)

    connection.close()

    return "Carga de datos realizada correctamente en %s segundos " % (time.time() - start_time)


if __name__ == '__main__':
    application.run()
