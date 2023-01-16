# coding=utf8

import dash_bootstrap_components as dbc
import plotly.express as px
import plotly.graph_objects as go
from dash import dcc, html, Input, Output

# from app import application, last_date, init_date, contApps, contReviews, contTechs

init_date = init_date['created'].values[0]
last_date = last_date['created'].values[0]

import dash_daq as daq

# ------------------------------------------------------------------------------
# Graphics layout


graphics_layout = html.Div([

    dbc.Row(
        [

            dbc.Col(
                [
                    dbc.Row(
                        [
                            dbc.Col(
                                dbc.Card(
                                    dbc.CardBody(
                                        [
                                            daq.LEDDisplay(
                                                label="Aplicaciones analizadas",
                                                value=contApps,
                                                color="#FF5E5E"
                                            )],

                                    ),
                                    className="cards"

                                ), width={'size': 4, "offset": 0, 'order': 1}
                            ),
                            dbc.Col(
                                dbc.Card(
                                    dbc.CardBody(
                                        [
                                            daq.LEDDisplay(
                                                label="Reseñas listadas",
                                                value=contReviews,
                                                color="#FF5E5E"
                                            )],

                                    ),
                                    className="cards"

                                ), width={'size': 4, "offset": 0, 'order': 2}
                            ),
                            dbc.Col(
                                dbc.Card(
                                    dbc.CardBody(
                                        [
                                            daq.LEDDisplay(
                                                label="Tecnologías obtenidas",
                                                value=contTechs,
                                                color="#FF5E5E"
                                            )],

                                    ),
                                    className="cards"

                                ), width={'size': 4, "offset": 0, 'order': 3}
                            )]),
                    dbc.Card(
                        dbc.CardBody(
                            [
                                dbc.CardHeader("Selecciona propiedad"),
                                dcc.Dropdown(
                                    id='fieldDropdown',
                                    options=[
                                        {'label': 'Tecnologías', 'value': 'programmingLanguage'},
                                        {'label': 'Géneros', 'value': 'genre'},
                                        {'label': 'Clasificaciones', 'value': 'contentRating'},
                                        {'label': 'Contiene Anuncios', 'value': 'adSupported'}
                                    ],
                                    value='programmingLanguage',
                                    multi=False,
                                    clearable=False,
                                    style={"width": "100%"}
                                ),
                                dcc.Loading(
                                    id="loading-3",
                                    type="default",
                                    children=html.Div(id="loading-output-graphics"),
                                    fullscreen=True

                                ),
                            ],

                        ),
                        className="cards"

                    ),

                    dbc.Card(
                        dbc.CardBody(
                            [
                                dbc.CardHeader("Gráfico Aplicaciones"),
                                dcc.Graph(id='figurePie', figure={})
                            ]
                        ),
                        className="cards"

                    ),

                ],

                width={'size': 12, "offset": 0, 'order': 0}

            ),
        ]
    ),

])


# ------------------------------------------------------------------------------
# Conectamos los graficos Plotly con los componentes Dash
@application.callback(

    [Output(component_id='figurePie', component_property='figure'),
     Output('loading-output-graphics', 'children')],

    [Input(component_id='fieldDropdown', component_property='value')]
)
def update_graph(fieldDropdown):
    # from app import limit

    titles_apps = limit()

    dffPie = titles_apps.copy()

    dffPie = [i for i in dffPie if i['programmingLanguage'] is not None and i['programmingLanguage'] != '']

    for app in dffPie:

        if app['genreId'] is not None:
            if 'GAME' in app['genreId']:
                app['genre'] = 'Juego'

    figPie = px.pie(dffPie, names=fieldDropdown
                    )

    figPie.update_traces(textposition='inside', textinfo='label+value+percent',
                         hovertemplate="Valor:%{label} <br>Num: %{value} </br>Porcentaje: %{percent}"
                         )
    figPie.update_layout(height=600,
                         margin=dict(
                             l=40,
                             r=120,
                             b=50,
                             t=50,
                         ),
                         xaxis=dict(domain=[0, 0.1]))

    figPie = go.Figure(figPie)

    loading = ''

    return figPie, loading
