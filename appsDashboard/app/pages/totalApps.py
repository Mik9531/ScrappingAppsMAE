# coding=utf8

import dash
import dash_bootstrap_components as dbc
import pandas as pd
# import pandas as pd
from dash import dash_table, callback
from dash import dcc, html, Input, Output
from dash_iconify import DashIconify
from sqlalchemy import create_engine

from querys import titles_apps_list, titles_apps

# ------------------------------------------------------------------------------
# App layout

dash.register_page(__name__, path='/apps')

layout = html.Div([

    dbc.Row(
        [

            dbc.Col(
                dbc.Row(
                    [

                        dbc.Card(
                            dbc.CardBody(
                                [

                                    html.P("Selecciona la aplicación:", className="card-title",
                                           style={'padding-bottom': '15px', 'box-sizing': 'inherit'}),
                                    dcc.Dropdown(id="slct_app",

                                                 multi=False,
                                                 value='com.instagram.android',
                                                 optionHeight=40,
                                                 placeholder='Selecciona...',
                                                 clearable=False,
                                                 style={'width': "100%"}

                                                 ),
                                    dcc.Loading(
                                        id="loading-1",
                                        type="default",
                                        children=html.Div(id="loading-output-apps"),
                                        fullscreen=True

                                    ),

                                ]
                            ),
                            className="cards"
                        ),

                        dbc.Card(
                            dbc.CardBody(
                                [

                                    dbc.Row(

                                        dbc.Col(

                                            html.Img(id='output_img', height='350px', width='350px',
                                                     style={'text-align-last': 'center'}),

                                        ),

                                    )

                                ]
                            ),
                            className="cards",
                            style={'text-align-last': 'center'}

                        ),
                        dbc.Card(
                            dbc.CardBody(
                                [
                                    dbc.CardHeader("Tecnología"),

                                    dbc.Row(

                                        dbc.Col(

                                            html.Img(id='output_tech_img', height='100px'
                                                     ),

                                        ),

                                    )

                                ]
                            ),
                            className="cards",
                            style={'text-align-last': 'center'}
                        )
                    ]
                ),
                width={'size': 4, "offset": 0, 'order': 0}
            ),
            dbc.Col(dbc.Card(
                dbc.CardBody(
                    [
                        dbc.CardHeader("Datos de la aplicación"),
                        dbc.Row([

                            dbc.Col(
                                [
                                    html.Br(),

                                    dbc.Row(

                                        html.H6("Nombre de la aplicación", className="card-title",
                                                ),

                                    ),

                                    dbc.Row(

                                        html.P(id="output_title", className="card-title",
                                               ),

                                    ),
                                    html.Br(),

                                    dbc.Row(

                                        html.H6("Resumen", className="card-title",
                                                ),

                                    ),

                                    dbc.Row(

                                        html.P(id="output_summary", className="card-title",
                                               ),

                                    ),
                                    html.Br(),

                                    dbc.Row(

                                        html.H6("Lanzado", className="card-title",
                                                ),

                                    ),

                                    dbc.Row(

                                        html.P(id="output_released", className="card-title",
                                               ),

                                    ),
                                    html.Br(),

                                    dbc.Row(

                                        html.H6("Puntuación", className="card-title",
                                                ),

                                    ),

                                    dbc.Row(

                                        html.P(id="output_score", className="card-title",
                                               ),

                                    ),
                                    html.Br(),

                                    dbc.Row(

                                        html.H6("Desarrollador", className="card-title",
                                                ),

                                    ),

                                    dbc.Row(

                                        html.P(id="output_developer", className="card-title",
                                               ),

                                    ),
                                    html.Br(),

                                    dbc.Row(

                                        html.H6("Instalaciones", className="card-title",
                                                ),

                                    ),

                                    dbc.Row(

                                        html.P(id="output_installs", className="card-title",
                                               ),

                                    ),

                                    html.Br(),

                                    dbc.Row(

                                        html.H6("Librerías", className="card-title",
                                                ),

                                    ),

                                    dbc.Row(

                                        html.P(id='libraries'),

                                    ),
                                    html.Br(),

                                ],

                                width={'size': 6, "offset": 0, 'order': 0}
                            ),
                            dbc.Col(
                                [
                                    html.Br(),

                                    dbc.Row(

                                        html.H6("Precio", className="card-title",
                                                ),

                                    ),

                                    dbc.Row(

                                        html.P(id="output_price", className="card-title",
                                               ),

                                    ),
                                    html.Br(),

                                    dbc.Row(

                                        html.H6("Versión soportada", className="card-title",
                                                ),

                                    ),

                                    dbc.Row(

                                        html.P(id="output_androidVersionText", className="card-title",
                                               ),

                                    ),
                                    html.Br(),

                                    dbc.Row(

                                        html.H6("Género", className="card-title",
                                                ),

                                    ),

                                    dbc.Row(

                                        html.P(id="output_genre", className="card-title",
                                               ),

                                    ),
                                    html.Br(),

                                    dbc.Row(

                                        html.H6("Clasificación del contenido", className="card-title",
                                                ),

                                    ),

                                    dbc.Row(

                                        html.P(id="output_contentRating", className="card-title",
                                               ),

                                    ),
                                    html.Br(),

                                    dbc.Row(

                                        html.H6("Cambios recientes", className="card-title",
                                                ),

                                    ),

                                    dbc.Row(

                                        html.P(id="output_recentChanges", className="card-title",
                                               ),

                                    ),
                                    html.Br(),

                                    dbc.Row(

                                        html.H6("Enlace a Google Play", className="card-title",
                                                ),

                                    ),

                                    dbc.Row(

                                        html.Div(id="output_url"

                                                 ), style={'font-size': 'xx-large'})

                                ],

                                width={'size': 6, "offset": 0, 'order': 0}
                            )

                        ],

                        )
                    ]
                ),
                className="cards"

            ),
                width={'size': 8, "offset": 0, 'order': 2}
            ),
        ]
    ),

    dbc.Card(
        dbc.CardBody(
            [
                dbc.CardHeader("Permisos de la aplicación"),
                dbc.Row(
                    dash_table.DataTable(
                        id='rowsPermit',
                        columns=[
                            {'name': 'Localización', 'id': 'Location'},
                            {'name': 'Calendario', 'id': 'Calendar'},
                            {'name': 'Micrófono', 'id': 'Microphone'},
                            {'name': 'Contactos', 'id': 'Contacts'},
                            {'name': 'Historial', 'id': 'DeviceHistory'},
                            {'name': 'Cámara', 'id': 'Camera'},
                            {'name': 'Almacenamiento', 'id': 'Storage'},
                            {'name': 'WiFi', 'id': 'WiFi'},
                            {'name': 'Acceso a media', 'id': 'PhotosMediaFiles'},
                            {'name': 'Teléfono', 'id': 'Phone'},
                            {'name': 'ID Dispositivo', 'id': 'DeviceID'},
                            {'name': 'SMS', 'id': 'SMS'},
                            {'name': 'Identidad', 'id': 'Identity'},
                        ],
                        style_header={
                            'backgroundColor': 'rgb(210, 210, 210)',
                            'color': 'black',
                            'fontWeight': 'bold'
                        },
                        style_cell={'textAlign': 'center'},
                        data=[{'rowsPermit': i} for i in range(1)],
                        editable=True,
                    ), )
            ])),

    dbc.Card(
        dbc.CardBody(
            [
                dbc.CardHeader("Reseñas más relevantes"),
                dbc.Row(
                    dash_table.DataTable(
                        id='rowsReviews',
                        columns=[
                            {'name': 'Usuario', 'id': 'userName'},
                            {'name': 'Fecha de la reseña', 'id': 'dateReview'},
                            {'name': 'Puntuación', 'id': 'score'},
                            {'name': 'Reseña', 'id': 'text'}

                        ],
                        style_cell={'textAlign': 'center'},
                        data=[{'rowsReviews': i} for i in range(1)],
                        editable=False,
                        style_data={
                            'whiteSpace': 'normal',
                            'height': 'auto',
                        },
                        style_header={
                            'backgroundColor': 'rgb(210, 210, 210)',
                            'color': 'black',
                            'fontWeight': 'bold'
                        },
                        style_data_conditional=[
                            {
                                'if': {'row_index': 'odd'},
                                'backgroundColor': '#F5F5F5',
                            }],
                    ), )
            ]))

])


# ------------------------------------------------------------------------------
# Conectamos los graficos Plotly con los componentes Dash

@callback(

    [Output('output_img', 'src'),
     Output('output_tech_img', 'src'),
     Output('libraries', 'children'),
     Output('output_title', 'children'),
     Output('output_summary', 'children'),
     Output('output_score', 'children'),
     Output('output_developer', 'children'),
     Output('output_url', 'children'),
     Output('output_installs', 'children'),
     Output('output_price', 'children'),
     Output('output_androidVersionText', 'children'),
     Output('output_genre', 'children'),
     Output('output_contentRating', 'children'),
     Output('output_released', 'children'),
     Output('output_recentChanges', 'children'),
     Output('rowsPermit', 'data'),
     Output('rowsReviews', 'data'),
     Output('slct_app', 'options'),
     Output('loading-output-apps', 'children')
     ],
    Input(component_id='slct_app', component_property='value'),

)
def update_graph(app_selected):
    global rowsPermit, programmingLanguageImg, released
    global rowsTitles

    titles_apps_drop = [
        {"label": str(i['title']), "value": i['appId']} for i in
        titles_apps]

    titles_apps_list_data = titles_apps_list

    dff = titles_apps_list_data.copy()

    if app_selected is None:
        dff = dff[dff.appId == 'com.instagram.android']  # Aplicación más descargada
    else:
        dff = dff[dff.appId == app_selected]

    # dff = dff[dff.country == 'USA']

    dff = dff.iloc[-1:]

    if dff.empty is False:
        scoreFormat = "{:.2f}".format(dff.score.values[0])
        priceFormat = "{:.2f}".format(dff.price.values[0])
        url_img = dff.icon.values[0]
        app_title = dff.title.values[0]
        app_summary = dff.summary.values[0]
        app_score = '%s ⭐' % scoreFormat
        app_developer = dff.developer.values[0]
        app_url = dff.url.values[0]
        app_installs = dff.installs.values[0]
        price = '%s €' % priceFormat
        released = dff.released.values[0]

        if dff.androidVersionText.values[0] == 'Varies with device':
            androidVersionText = 'Varía según el dispositivo'
        else:
            androidVersionText = dff.androidVersionText.values[0]

        genre = dff.genre.values[0]
        contentRating = dff.contentRating.values[0]
        recentChanges = dff.recentChanges.values[0]
        programmingLanguageImg = dff.programmingLanguage.values[0]

        if programmingLanguageImg == 'Kotlin':
            programmingLanguageImg = 'https://www.nicepng.com/png/detail/271-2711435_android-apps-development-by-cloudtrains-technologies-kotlin-logo.png'
        elif programmingLanguageImg == 'Java':
            programmingLanguageImg = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp1rLnnxIth_0GaWjmgbUD0ZygnpBGDAXIDNevsrcrMkSGQRrRU-VvOrIsxlRCkFFL8mo&usqp=CAU'

        elif programmingLanguageImg == 'Flutter':
            programmingLanguageImg = 'http://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png'

        elif programmingLanguageImg == 'appInventor':
            programmingLanguageImg = 'https://upload.wikimedia.org/wikipedia/commons/6/64/Mit_app_inventor.png'

        else:
            programmingLanguageImg = 'https://media.istockphoto.com/vectors/file-vector-icon-isolated-on-white-background-outline-thin-line-file-vector-id1269389575?b=1&k=20&m=1269389575&s=170667a&w=0&h=TVyb9VTl4z4mex17tIjPwKMgUFpDZk_ZvnEN63xybv4='

        libraries = dff.libraries.values[0]

        if libraries is None or libraries == '':
            libraries = "No disponible"

    else:
        url_img = "https://plantillasdememes.com/img/plantillas/imagen-no-disponible01601774755.jpg"
        app_title = "No disponible"
        app_summary = "No disponible"
        app_score = "No disponible"
        app_developer = "No disponible"
        app_url = "/"
        app_installs = "No disponible"
        price = "No disponible"
        androidVersionText = "No disponible"
        genre = "No disponible"
        contentRating = "No disponible"
        recentChanges = "No disponible"
        libraries = "No disponible"

    div_url = html.Div(dcc.Link(DashIconify(
        icon="logos:google-play",
    ),
        id="output_url",
        href=app_url,
        target="_blank"), style={}

    )

    # Permisos de la aplicacion

    sqlEngine = create_engine('mysql+pymysql://root:kalandria@testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com/appsData')

    dbConnection = sqlEngine.connect()

    permitsApp = pd.read_sql(
        "SELECT Location,Calendar,Microphone,Contacts,DeviceHistory,Camera,Storage,WiFi,PhotosMediaFiles,Phone,DeviceID,SMS,Identity FROM PERMISSIONS P WHERE appId = %s LIMIT 1",
        params=[app_selected],
        con=dbConnection).to_dict(orient='records')

    reviewsApp = pd.read_sql(
        "SELECT userName,DATE(date) AS  dateReview,score,text FROM REVIEWS P WHERE appId = %s LIMIT 10",
        params=[app_selected],
        con=dbConnection).to_dict(orient='records')

    dbConnection.close()

    # Puntuaciones

    for review in reviewsApp:
        if review['score'] == 1:
            review['score'] = '⭐'
        elif review['score'] == 2:
            review['score'] = '⭐⭐'
        elif review['score'] == 3:
            review['score'] = '⭐⭐⭐'
        elif review['score'] == 4:
            review['score'] = '⭐⭐⭐⭐'
        elif review['score'] == 5:
            review['score'] = '⭐⭐⭐⭐⭐'

    # Permisos

    for permit in permitsApp:
        if permit['Location'] == '1':
            permit['Location'] = '✔'
        else:
            permit['Location'] = '✘'

        if permit['Calendar'] == '1':
            permit['Calendar'] = '✔'
        else:
            permit['Calendar'] = '✘'

        if permit['Microphone'] == '1':
            permit['Microphone'] = '✔'
        else:
            permit['Microphone'] = '✘'

        if permit['Contacts'] == '1':
            permit['Contacts'] = '✔'
        else:
            permit['Contacts'] = '✘'

        if permit['DeviceHistory'] == '1':
            permit['DeviceHistory'] = '✔'
        else:
            permit['DeviceHistory'] = '✘'

        if permit['Camera'] == '1':
            permit['Camera'] = '✔'
        else:
            permit['Camera'] = '✘'

        if permit['Storage'] == '1':
            permit['Storage'] = '✔'
        else:
            permit['Storage'] = '✘'

        if permit['WiFi'] == '1':
            permit['WiFi'] = '✔'
        else:
            permit['WiFi'] = '✘'

        if permit['PhotosMediaFiles'] == '1':
            permit['PhotosMediaFiles'] = '✔'
        else:
            permit['PhotosMediaFiles'] = '✘'

        if permit['Phone'] == '1':
            permit['Phone'] = '✔'
        else:
            permit['Phone'] = '✘'

        if permit['DeviceID'] == '1':
            permit['DeviceID'] = '✔'
        else:
            permit['DeviceID'] = '✘'

        if permit['SMS'] == '1':
            permit['SMS'] = '✔'
        else:
            permit['SMS'] = '✘'

        if permit['Identity'] == '1':
            permit['Identity'] = '✔'
        else:
            permit['Identity'] = '✘'

    rowsPermit = permitsApp

    rowsReviews = reviewsApp

    loading = ''

    return url_img, programmingLanguageImg, libraries, app_title, app_summary, app_score, app_developer, div_url, app_installs, price, androidVersionText, genre, contentRating, released, recentChanges, rowsPermit, reviewsApp, titles_apps_drop, loading
