# coding=utf8

from dash import Dash, dcc, html, Input, Output
import dash_bootstrap_components as dbc
from sqlalchemy import create_engine
import pandas as pd
from app import app
from datetime import date

# Seleccionamos la fecha actual (y fecha máxima a poder seleccionar)
sqlEngine = create_engine('mysql+pymysql://root:kalandria@testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com/appsData')

dbConnection = sqlEngine.connect()
last_date = pd.read_sql(
    "SELECT TG.created from TOP_GROSSING TG ORDER BY TG.created DESC LIMIT 1", sqlEngine)

# ------------------------------------------------------------------------------

home_layout = html.Div([

    dbc.Card(
        dbc.CardBody([
            html.H3("¡Bienvenido a los resultados del scraping!", style={'text-align': 'left'}),
            html.P("En esta página encontrarás todos los datos asociados al scraping realizado hasta el día:"),
            html.Div(id='date_home', children=[]),
        ]), className="cards"
    ),

    html.Hr(),

    dbc.Card(
        dbc.CardBody(
            html.H1("Aplicación web con Dash Home", style={'text-align': 'center'})
        ), className="cards"
    ),

])


@app.callback(
    Output(component_id='date_home', component_property='children'),
    Input('url', 'pathname')

)
def get_date(pathname):
    container = "{}".format(last_date['created'][0])

    return container
