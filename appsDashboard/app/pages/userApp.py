# coding=utf8
import os

import dash
import dash_bootstrap_components as dbc
import pymysql
from androguard.core.bytecodes.apk import APK
from dash import dcc, html, Input, Output, State, callback
from google_play_scraper import app, permissions, reviews

# ------------------------------------------------------------------------------

dash.register_page(__name__, path='/userApp')

layout = html.Div([

    dbc.Card(
        dbc.CardBody([
            dbc.Row(
                dbc.Alert(
                    [
                        "Si no encuentra la aplicación que desea, puede añadir su id a continuación para almacenarla"
                    ],
                    color="danger", style={"textAlign": "center"},
                ),
            ),

            html.Br(),

            dbc.Row(
                html.H3(
                    "Localización del id de una aplicación en Google Play",
                    style={"font-size": "20px", "text-decoration": "underline", "textAlign": "center"},
                ),
            ),

            html.Br(),

            dbc.Row(
                html.Div(
                    children=[
                        html.Img(
                            src="https://lh3.googleusercontent.com/LUNLwo3B0g95nOUPnDSHUWhBwkGfF6ktinOzQm4Trg6V1RIiviZUbvD5QwNVxIheYUU=w895-rwa",
                            className="img"
                        )
                    ]

                ), style={"textAlign": "center"}, className="imgContainer"

            ),
        ]), className="cards"
    ),

    dbc.Card(
        dbc.CardBody([

            dbc.Row(
                dcc.Input(id="inputId", type="text", placeholder="Introduzca id de la aplicación"),

                style={"textAlign": "center"},
            ),

            html.Br(),

            dbc.Row(
                html.Button('Añadir aplicación', id='submit-val', n_clicks=0),

                style={"textAlign": "center"},
            ),

            html.Br(),

            dbc.Row(
                html.Div(id='container-button-basic',
                         children='Enter a value and press submit'),

                style={"textAlign": "center"},
            )
        ]), className="cards"
    ),

])


@callback(
    Output('container-button-basic', 'children'),
    Input('submit-val', 'n_clicks'),
    State('inputId', 'value'),

)
def update_output(n_clicks, value):
    connection = pymysql.connect(host='testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com',
                                 user='root',
                                 password='kalandria',
                                 db='appsData',
                                 charset='utf8mb4',
                                 cursorclass=pymysql.cursors.DictCursor)
    cursor = connection.cursor()

    if value is None:
        return ''

    else:

        sql = "SELECT appId,title FROM APPS WHERE appId = %s"

        val = value

        cursor.execute(sql, val)

        app_exist = cursor.fetchone()

        if app_exist is not None:
            return 'La aplicación "{}" ya se encuentra en nuestra base de datos'.format(
                app_exist['title']
            )
        else:
            # Comenzamos carga de aplicación

            total_apps = []
            app_details = []
            total_permissions = []
            total_reviews = []

            actual_app = value
            cont_iter = 0

            # Realizamos un bucle de 10 iteraciones ya que el servidor a veces no obtiene a la primera los datos de la aplicacion

            while bool(app_details) is False and cont_iter < 10:
                try:
                    app_details = app(actual_app, lang="es")

                    cont_iter += 1
                except Exception:
                    app_details = []
                    cont_iter += 1

            if len(app_details) and app_details['appId'] is not None:
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

                package_name = None

                app_details['programmingLanguage'] = ""

                app_details['libraries'] = ""

                # Si la aplicacion es gratuita...

                if (app_details['free'] is True):

                    try:

                        sql = "SELECT programmingLanguage,libraries FROM APPS WHERE appId = %s"

                        val = actual_app

                        cursor.execute(sql, val)

                        language_exists = cursor.fetchone()

                        print(language_exists['programmingLanguage'])

                    except Exception as e:
                        print(e)
                        print('Error al obtener lenguaje de programación')
                        language_exists = None
                    try:

                        # ...descargamos la APK si no existe datos de lenguaje de programación en la tabla previos

                        if language_exists['programmingLanguage'] is None or language_exists[
                            'programmingLanguage'] == "":

                            print('Procediendo a la descarga')

                            id_download = None
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
                                        print("Extrayendo apk...")
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
                                        app_details['programmingLanguage'] = 'Desconocido'

                                    # Obtenemos las librerías externas usadas

                                    if language_exists['libraries'] is None or language_exists[
                                        'libraries'] == "":
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

                                    else:
                                        app_details['libraries'] = language_exists['libraries']

                                    try:
                                        os.remove(id_download)
                                        del id_download
                                    except Exception as e:
                                        print(e)

                            else:
                                app_details['programmingLanguage'] = 'Desconocido'

                        else:
                            app_details['programmingLanguage'] = language_exists['programmingLanguage']
                            app_details['libraries'] = language_exists['libraries']
                    except Exception as e:
                        print(e)

                if "appinventor" in actual_app:
                    app_details['programmingLanguage'] = 'appInventor'

                # Añadimos a apps los datos de la app finales

                apps = (app_details['appId'],
                        app_details['title'],
                        score,
                        summary,
                        app_details['price'],
                        app_details['free'],
                        app_details['developer'],
                        app_details['url'],
                        app_details['icon'],
                        description,
                        installs,
                        ratings,
                        reviews_num,
                        androidVersionText,
                        genre,
                        genreId,
                        adSupported,
                        recentChanges,
                        released,
                        contentRating,
                        app_details['programmingLanguage'],
                        app_details['libraries']
                        )

                total_apps.append(apps)

                # Obtenemos los permisos de la aplicacion actual si no se encuentra ya en permisos

                check_permission_app = False

                check_permission_app = True

                if check_permission_app:

                    try:
                        permissions_data = permissions(actual_app)
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

                        # Añadimos los datos de permisos finales a data_permissions

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

                try:

                    sql = "SELECT appId FROM REVIEWS WHERE appId = %s"

                    val = actual_app

                    cursor.execute(sql, val)

                    appId = cursor.fetchone()

                except Exception as e:
                    print(e)
                    print('Error al obtener comentarios')
                    appId = None

                if appId is not None:

                    check_review = True

                    if check_review:

                        try:
                            reviews_data = reviews(actual_app, lang='es', country='es',
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

                                # Añadimos los datos de los comentarios finales a total_reviews

                                total_reviews.append(data_reviews)

                # Insertarmos las aplicaciones en la tabla APPS

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
                      "description," \
                      "installs, " \
                      "ratings, " \
                      "reviews, " \
                      "androidVersionText, " \
                      "genre," \
                      "genreId, " \
                      "adSupported, " \
                      "recentChanges, " \
                      "released, " \
                      "contentRating, " \
                      "programmingLanguage, " \
                      "libraries," \
                      "created) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,NOW()) ON " \
                      "DUPLICATE KEY UPDATE updated = NOW()," \
                      "title=VALUES(title), " \
                      "score=VALUES(score), " \
                      "summary=VALUES(summary), " \
                      "price=VALUES(price), " \
                      "free=VALUES(free), " \
                      "url=VALUES(url), " \
                      "icon=VALUES(icon) , " \
                      "description=VALUES(description), " \
                      "installs=VALUES(installs), " \
                      "ratings=VALUES(ratings)," \
                      "reviews=VALUES(reviews), " \
                      "androidVersionText=VALUES(androidVersionText), " \
                      "genre=VALUES(genre), " \
                      "genreId=VALUES(genreId), " \
                      "adSupported=VALUES(adSupported), " \
                      "recentChanges=VALUES(recentChanges)," \
                      "released=VALUES(released), " \
                      "contentRating=VALUES(contentRating), " \
                      "programmingLanguage=VALUES(programmingLanguage), libraries=VALUES(libraries)"

                val = total_apps
                cursor.executemany(sql, val)
                connection.commit()
                print(cursor.rowcount, " aplicaciones insertadas.")

                # Insertamos los permisos en la tabla PERMISSIONS
                if len(total_permissions):
                    sql = "INSERT INTO PERMISSIONS(appId," \
                          "SMS, " \
                          "Storage, " \
                          "Camera, " \
                          "DeviceHistory, " \
                          "Microphone, " \
                          "Calendar, " \
                          "Phone, " \
                          "DeviceID, " \
                          "Identity, " \
                          "PhotosMediaFiles, " \
                          "Contacts, " \
                          "WiFi, " \
                          "Location ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s, %s,%s,%s,%s) ON " \
                          "DUPLICATE KEY UPDATE appId = VALUES(appId), " \
                          "SMS = VALUES(SMS), " \
                          "Storage = VALUES(Storage), " \
                          "Camera = VALUES(Camera), " \
                          "DeviceHistory = VALUES(DeviceHistory), " \
                          "Microphone = VALUES(Microphone), " \
                          "Calendar = VALUES(Calendar), " \
                          "Phone = VALUES(Phone), " \
                          "DeviceID = VALUES(DeviceID), " \
                          "Identity = VALUES(Identity), " \
                          "PhotosMediaFiles = VALUES(PhotosMediaFiles), " \
                          "Contacts = VALUES(Contacts), " \
                          "WiFi = VALUES(WiFi), " \
                          "Location = VALUES(Location) "

                    val = total_permissions
                    cursor.executemany(sql, val)
                    connection.commit()
                    print(cursor.rowcount, " permisos insertados.")

                # Insertamos los comentarios en la tabla REVIEWS
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
                    print(cursor.rowcount, " comentarios insertados.")


            except Exception as e:
                print(e)

            connection.close()

            return 'Aplicación "{}" añadida'.format(
                app_details['title']
            )
