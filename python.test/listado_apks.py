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
                html.H2("Obtención de datos de aplicaciones", style={'text-align': 'center'})
            ),
            dbc.Row(
                dbc.Alert(
                    [
                        "Al pulsar en el botón obtener se realizará el scraping de las aplicaciones \n",
                        html.A("example link", href="/listadoApks", className="alert-link"),
                    ],
                    color="danger",
                ),
            )
        ]), className="cards"
    ),

    html.Hr()

])
