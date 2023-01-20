# coding=utf8
import dash
from sqlalchemy import create_engine
import dash_bootstrap_components as dbc
import plotly.express as px
import plotly.graph_objects as go
from dash import dcc, html, Input, Output, callback
import dash_daq as daq
import pandas as pd

# from app import application, last_date, init_date, contApps, contReviews, contTechs

# init_date = init_date['created'].values[0]
# last_date = last_date['created'].values[0]

# ------------------------------------------------------------------------------
# Graphics layout

print('/graphics')

dash.register_page(__name__, path='/graphics')

layout = html.Div([

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
                                                id='led1',
                                                label="Aplicaciones analizadas",
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
                                                id='led2',
                                                label="Reseñas listadas",
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
                                                id='led3',
                                                label="Tecnologías obtenidas",
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
@callback(

    [Output(component_id='figurePie', component_property='figure'),
     Output('loading-output-graphics', 'children'),
     Output('led1', 'value'), Output('led2', 'value'), Output('led3', 'value')],

    [Input(component_id='fieldDropdown', component_property='value')],

)
def update_graph(fieldDropdown):
    global titles_apps, contApps, contReviews, contTechs

    limit_table_top = " "
    limit_table_apps = " "

    trigger_component_id = dash.callback_context.triggered[0]["prop_id"].split(".")[
        0]  # Comprobamos si es la primera vez que entra

    if len(trigger_component_id) == 0:
        print('Vacio')
        sqlEngine = create_engine(
            'mysql+pymysql://root:kalandria@testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com/appsData')

        dbConnection = sqlEngine.connect()

        titles_apps = pd.read_sql(
            "SELECT * from APPS A GROUP BY A.appId ORDER BY A.maxInstalls DESC",
            con=dbConnection).to_dict(orient='records')

        contApps = len(titles_apps)

        allReviews = pd.read_sql(
            "SELECT appId from REVIEWS" + limit_table_apps,
            sqlEngine).to_dict(orient='records')

        contReviews = len(allReviews)

        allTechs = pd.read_sql(
            "SELECT appId,programmingLanguage from APPS WHERE programmingLanguage != 'None' AND programmingLanguage != '' " + limit_table_apps,
            sqlEngine).to_dict(orient='records')

        contTechs = len(allTechs)

        dbConnection.close()

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

    else:
        print('No vacio')

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

    return figPie, loading, contApps, contReviews, contTechs
