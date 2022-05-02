# coding=utf8

from dash import Dash, dcc, html, Input, Output
import dash_bootstrap_components as dbc
from sqlalchemy import create_engine
import pandas as pd

# ------------------------------------------------------------------------------


obtain_layout = html.Div([

    dbc.Card(
        dbc.CardBody([
            dbc.Row(
                dbc.Alert(
                    [
                        "Al pulsar en el botón obtener se realizará el scraping de todas las aplicaciones"
                    ],
                    color="danger", style={"text-align": "center"},
                ),
            ),
            dbc.Row(
                dcc.Link(html.Button('Realizar scraping'),
                         href='http://dockerflaskpython-env.eba-4mvjtpq7.us-east-2.elasticbeanstalk.com/',
                         target="_blank"),
                style={"text-align": "center"},
            )
        ]), className="cards"
    ),

])
