# coding=utf8
from datetime import date
from datetime import datetime

import dash_bootstrap_components as dbc
from dash import dash_table
import plotly.graph_objects as go
from dash import dcc, html, Input, Output

from app import app, last_date, init_date, titles_apps, top_grossing_apps, titles_apps_list
from dash_iconify import DashIconify
import pandas as pd
from collections import OrderedDict
from sqlalchemy import create_engine

init_date = init_date['created'].values[0]
last_date = last_date['created'].values[0]

# ------------------------------------------------------------------------------
# App layout

# data = OrderedDict(
#     [
#         ("Date", ["2015-01-01", "2015-10-24", "2016-05-10", "2017-01-10", "2018-05-10", "2018-08-15"]),
#         ("Region", ["Montreal", "Toronto", "New York City", "Miami", "San Francisco", "London"]),
#         ("Temperature", [1, -20, 3.512, 4, 10423, -441.2]),
#         ("Humidity", [10, 20, 30, 40, 50, 60]),
#         ("Pressure", [2, 10924, 3912, -10, 3591.2, 15]),
#     ]
# )
#
# df = pd.DataFrame(data)

apps_layout = html.Div([

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
                                                 options=[
                                                     {"label": i['title'], "value": i['appId']} for i in titles_apps],
                                                 multi=False,
                                                 value='com.instagram.android',
                                                 optionHeight=40,
                                                 placeholder='Selecciona...',
                                                 clearable=False,
                                                 style={'width': "100%"}
                                                 ),

                                ]
                            ),
                            className="cards"
                        ),

                        dbc.Card(
                            dbc.CardBody(
                                [

                                    dbc.Row(
                                        [

                                            dbc.Col(

                                                html.Img(id='output_img', height='350px', width='350px'),
                                                width={'size': 7, "offset": 0, 'order': 1}
                                            ),

                                            dbc.Col(
                                                [

                                                    dbc.Row(

                                                        html.H5(id="output_title", className="card-title",
                                                                ),

                                                    ),
                                                    html.Br(),

                                                    dbc.Row(

                                                        html.P(id="output_summary", className="card-title",
                                                               ),

                                                    ),
                                                    html.Br(),

                                                    dbc.Row(

                                                        html.P(id="output_score", className="card-title",
                                                               ),

                                                    ),
                                                    html.Br(),

                                                    dbc.Row(

                                                        html.P(id="output_developer", className="card-title",
                                                               ),

                                                    ),
                                                    html.Br(),

                                                    dbc.Row(

                                                        html.Div(id="output_url"

                                                                 ))],

                                                width={'size': 5, "offset": 0, 'order': 1}
                                            ),
                                        ])

                                ]
                            ),
                            className="cards"
                        )
                    ]
                ),
                width={'size': 5, "offset": 0, 'order': 1}
            ),
            dbc.Col(dbc.Card(
                dbc.CardBody(
                    [
                        dbc.CardHeader("Puntuación de la aplicación en el tiempo"),
                        dcc.Graph(id='apps_map2', figure={})
                    ]
                ),
                className="cards"

            ),
                width={'size': 7, "offset": 0, 'order': 2}
            ),
        ]
    ),

    dbc.Card(
        dbc.CardBody(
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
                    style_cell={'textAlign': 'center'},
                    data=[{'rowsPermit': i} for i in range(1)],
                    editable=True,
                ), )
        ))

])


# ------------------------------------------------------------------------------
# Conectamos los graficos Plotly con los componentes Dash
@app.callback(

    [Output('output_img', 'src'),
     Output('output_title', 'children'),
     Output('output_summary', 'children'),
     Output('output_score', 'children'),
     Output('output_developer', 'children'),
     Output('output_url', 'children'),
     Output('rowsPermit', 'data')],
    Input(component_id='slct_app', component_property='value')
)
def update_graph(app_selected):
    global rows
    dff = titles_apps_list.copy()

    if app_selected is None:
        dff = dff[dff.appId == 'com.instagram.android']  # Aplicación más descargada
    else:
        dff = dff[dff.appId == app_selected]

    # dff = dff[dff.country == 'USA']

    dff = dff.iloc[-1:]

    if dff.empty is False:
        url_img = dff.icon.values[0]
        app_title = dff.title.values[0]
        app_summary = dff.summary.values[0]
        app_score = dff.score.values[0]
        app_developer = dff.developer.values[0]
        app_url = dff.url.values[0]
    else:
        url_img = "https://plantillasdememes.com/img/plantillas/imagen-no-disponible01601774755.jpg"
        app_title = "No disponible"
        app_summary = "No disponible"
        app_score = "No disponible"
        app_developer = "No disponible"
        app_url = "/"

    div_url = html.Div(dcc.Link(DashIconify(
        icon="logos:google-play",
    ),
        id="output_url",
        href=app_url,
        target="_blank"), style={"width": "35%"}

    )

    # Permisos de la aplicacion

    sqlEngine = create_engine('mysql+pymysql://root:kalandria@testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com/appsData')

    dbConnection = sqlEngine.connect()

    permitsApp = pd.read_sql(
        "SELECT Location,Calendar,Microphone,Contacts,DeviceHistory,Camera,Storage,WiFi,PhotosMediaFiles,Phone,DeviceID,SMS,Identity FROM PERMISSIONS P WHERE appId = %s LIMIT 1",
        params=[app_selected],
        con=dbConnection).to_dict(orient='records')

    dbConnection.close()

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

    rows = permitsApp

    return url_img, app_title, app_summary, app_score, app_developer, div_url, rows
