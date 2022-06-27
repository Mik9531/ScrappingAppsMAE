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

init_date = init_date['created'].values[0]
last_date = last_date['created'].values[0]

# ------------------------------------------------------------------------------
# App layout

data = OrderedDict(
    [
        ("Date", ["2015-01-01", "2015-10-24", "2016-05-10", "2017-01-10", "2018-05-10", "2018-08-15"]),
        ("Region", ["Montreal", "Toronto", "New York City", "Miami", "San Francisco", "London"]),
        ("Temperature", [1, -20, 3.512, 4, 10423, -441.2]),
        ("Humidity", [10, 20, 30, 40, 50, 60]),
        ("Pressure", [2, 10924, 3912, -10, 3591.2, 15]),
    ]
)

df = pd.DataFrame(data)

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

    dbc.Card(
        dbc.CardBody(
            dbc.Row(
                dash_table.DataTable(
                    data=df.to_dict('records'),
                    columns=[{'id': c, 'name': c} for c in df.columns],
                    style_as_list_view=True,
                    style_cell={'padding': '5px'},
                    style_header={
                        'backgroundColor': 'white',
                        'fontWeight': 'bold'
                    },
                    style_cell_conditional=[
                        {
                            'if': {'column_id': c},
                            'textAlign': 'left'
                        } for c in ['Date', 'Region']
                    ],
                ))
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
     Output('output_url', 'children')],
    Input(component_id='slct_app', component_property='value')
)
def update_graph(app_selected):
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

    return url_img, app_title, app_summary, app_score, app_developer, div_url
