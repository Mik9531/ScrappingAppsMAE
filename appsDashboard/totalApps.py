# coding=utf8
from datetime import date
from datetime import datetime

import dash_bootstrap_components as dbc
import plotly.graph_objects as go
from dash import dcc, html, Input, Output

from app import app, last_date, init_date, titles_apps, top_grossing_apps
from dash_iconify import DashIconify

init_date = init_date['created'].values[0]
last_date = last_date['created'].values[0]

# ------------------------------------------------------------------------------
# App layout


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
                                                 value='tv.twitch.android.app',
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

])


# ------------------------------------------------------------------------------
# Conectamos los graficos Plotly con los componentes Dash
@app.callback(

    [Output('output_img', 'src'),
     Output('output_title', 'children'),
     Output('output_summary', 'children'),
     Output('output_score', 'children'),
     Output('output_developer', 'children'),
     Output('output_url', 'children')],
    Input(component_id='slct_app', component_property='value')
)
def update_graph(app_selected):
    dff = top_grossing_apps.copy()
    print(dff.head())

    if app_selected is None:
        dff = dff[dff.position == 1]
    else:
        dff = dff[dff.appId == app_selected]

    dff = dff[dff.country == 'USA']

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
    print(dff.head())

    return url_img, app_title, app_summary, app_score, app_developer, div_url
