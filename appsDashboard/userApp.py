# coding=utf8

from dash import Dash, dcc, html, Input, Output, State
import dash_bootstrap_components as dbc
from app import app
from sqlalchemy import create_engine
import pandas as pd

# ------------------------------------------------------------------------------


user_app_layout = html.Div([

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
            dbc.Row(
                dcc.Input(id="inputId", type="text", placeholder="Introduzca id"),

                style={"textAlign": "center"},
            ),

            html.Br(),

            dbc.Row(
                html.Button('Submit', id='submit-val', n_clicks=0),

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


@app.callback(
    Output('container-button-basic', 'children'),
    Input('submit-val', 'n_clicks'),
    State('inputId', 'value'),

)
def update_output(n_clicks, value):
    test = 123

    sqlEngine = create_engine('mysql+pymysql://root:kalandria@testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com/appsData')

    dbConnection = sqlEngine.connect()

    app_exist = pd.read_sql(
        "SELECT title FROM APPS A WHERE appId = %s LIMIT 1",
        params=[value],
        con=dbConnection).to_dict(orient='records')

    dbConnection.close()

    if value is None:
        return 'Introduzca la aplicación'

    else:

        if len(app_exist) != 0:
            return 'La aplicación "{}" ya se encuentra en nuestra base de datos'.format(
                app_exist
            )
        else:
            # Comenzamos carga de aplicación
            
            return 'Aplicación "{}" añadida'.format(
                app_exist
            )
