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


# ------------------------------------------------------------------------------
# App layout


home_layout = html.Div([

    html.H1("Aplicación web con Dash Home", style={'text-align': 'center'})

])
