# coding=utf8
from sqlalchemy import create_engine
import pandas as pd
import dash_bootstrap_components as dbc
from app import app
from dash import Dash, dcc, html, Input, Output
import plotly.graph_objects as go
from datetime import date
from datetime import datetime

# Importamos los datos desde nuestro mysql

# sqlEngine = create_engine('mysql+pymysql://root:kalandria@testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com/appsData')
#
# dbConnection = sqlEngine.connect()
#
# df = pd.read_sql(
#     "SELECT TG.created, A.title, TG.position, TG.country, TG.appId from TOP_GROSSING TG INNER JOIN APPS A ON (A.appId = "
#     "TG.appId)", con=dbConnection)
#
# titles_apps = pd.read_sql(
#     "SELECT A.title, TG.appId from TOP_GROSSING TG INNER JOIN APPS A ON (A.appId = "
#     "TG.appId) ORDER BY TG.created DESC", sqlEngine).to_dict(orient='records')
#
# # Seleccionamos la fecha inicial de la base de datos (y fecha mínima a poder seleccionar)
#
# init_date = pd.read_sql(
#     "SELECT TG.created from TOP_GROSSING TG LIMIT 1", sqlEngine)
#
# # Seleccionamos la fecha actual (y fecha máxima a poder seleccionar)
#
# last_date = pd.read_sql(
#     "SELECT TG.created from TOP_GROSSING TG ORDER BY TG.created DESC LIMIT 1", sqlEngine)
#
# init_date = init_date['created'].values[0]
# last_date = last_date['created'].values[0]
# dbConnection.close()

# ------------------------------------------------------------------------------
# App layout

top_grossing_layout = html.Div([
    html.H1("Aplicación web con Dash Grossing", style={'text-align': 'center'}),
])

# top_grossing_layout = html.Div([
#
#     html.H1("Aplicación web con Dash Grossing", style={'text-align': 'center'}),
#
#     dbc.Row(
#         [
#
#             dbc.Col(dbc.Card(
#                 dbc.CardBody(
#                     [
#                         html.H5("Selecciona fecha:", className="card-title",
#                                 style={'padding-bottom': '20px', 'box-sizing': 'inherit'}),
#                         # Selector calendario
#                         dcc.DatePickerSingle(
#                             id='slct_year',
#                             min_date_allowed=init_date,
#                             max_date_allowed=last_date,
#                             initial_visible_month=date(2022, 4, 1),
#                             date=last_date,
#                             display_format='DD/MM/YYYY',
#                             style={'margin': 'auto'}
#                         ),
#
#                         dcc.Dropdown(id="slct_app",
#                                      options=[
#                                          {"label": i['title'], "value": i['appId']} for i in titles_apps],
#                                      multi=False,
#                                      value=None,
#                                      style={'width': "40%"}
#                                      ),
#
#                     ]
#                 ),
#                 className="cards"
#             ),
#                 width={'size': 4, "offset": 0, 'order': 1}
#             ),
#             dbc.Col(dbc.Card(
#                 dbc.CardBody(
#                     [
#                         dbc.CardHeader("Posición de la aplicación"),
#                         dcc.Graph(id='apps_map', figure={})
#                     ]
#                 ),
#                 className="cards"
#
#             ),
#                 width={'size': 8, "offset": 0, 'order': 2}
#             ),
#         ]
#     ),
#
# ])


# ------------------------------------------------------------------------------
# Conectamos los graficos Plotly con los componentes Dash
# @app.callback(
#
#     Output(component_id='apps_map', component_property='figure'),
#     [Input(component_id='slct_year', component_property='date'),
#      Input(component_id='slct_app', component_property='value')]
# )
# def update_graph(date_selected, app_selected):
#     # container = "El dia seleccionado ha sido: {}".format(date_selected)
#
#     date_selected = datetime.strptime(date_selected, '%Y-%m-%d')
#     date_selected = date_selected.date()
#
#     dff = df.copy()
#     print(dff.head())
#
#     dff = dff[dff.created == date_selected]
#     print(dff.head())
#
#     if app_selected is None:
#         dff = dff[dff.position == 1]
#     else:
#         dff = dff[dff.appId == app_selected]
#
#     print(dff.head())
#
#     # Plotly Express
#     # fig = px.choropleth(
#     #     data_frame=dff,
#     #     locations='country',
#     #     hover_name="title",
#     #     labels={'position': 'Puesto de la aplicacion'},
#     #     color_continuous_scale=px.colors.sequential.Plasma,
#     #     range_color=(0, 50),
#     #     color='position'
#     # )
#
#     fig = go.Figure(data=go.Choropleth(
#         locations=dff['country'],
#         z=dff['position'].astype(int),
#         text=dff['title'],
#         zmin=0,
#         zmax=50,
#         colorscale='Reds',
#         autocolorscale=False,
#         reversescale=True,
#         marker_opacity=0.5,
#         marker_line_width=0,
#         colorbar_title='Puesto',
#     ))
#
#     fig.update_layout(
#         margin={"r": 0, "t": 40, "l": 0, "b": 0},
#         geo=dict(
#             showframe=False,
#             showcoastlines=False,
#             projection_type='equirectangular'
#         ),
#         annotations=[dict(
#             x=0.55,
#             y=0.1,
#             xref='paper',
#             yref='paper',
#             text='Tabla: TOP_GROSSING',
#             showarrow=False
#         )]
#     )
#
#     return fig
