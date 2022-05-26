# coding=utf8
import dash
import dash_bootstrap_components as dbc
from sqlalchemy import create_engine
import pandas as pd

# Importamos los datos desde nuestro mysql

sqlEngine = create_engine('mysql+pymysql://root:kalandria@testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com/appsData')

dbConnection = sqlEngine.connect()

top_grossing_apps = pd.read_sql(
    "SELECT TG.created, A.title, TG.position, TG.country, TG.appId, A.icon, A.url, A.developer, A.score, A.summary from TOP_GROSSING TG INNER JOIN APPS A ON (A.appId "
    "= "
    "TG.appId)", con=dbConnection)

titles_apps = pd.read_sql(
    "SELECT TG.created, A.title, A.icon, TG.appId from TOP_GROSSING TG INNER JOIN APPS A ON (A.appId = TG.appId) GROUP BY TG.appId ORDER BY A.title ASC",
    sqlEngine).to_dict(orient='records')

top_apps = pd.read_sql(
    "SELECT A.title,A.icon, TA.position, A.summary, TA.appId from TOP_APPLICATIONS TA INNER JOIN APPS A ON (A.appId = TA.appId) ORDER BY TA.created DESC LIMIT 10",
    sqlEngine)

# Seleccionamos la fecha inicial de la base de datos (y fecha mínima a poder seleccionar)
init_date = pd.read_sql(
    "SELECT TG.created from TOP_GROSSING TG LIMIT 1", sqlEngine)

# Seleccionamos la fecha actual (y fecha máxima a poder seleccionar)

last_date = pd.read_sql(
    "SELECT TG.created from TOP_GROSSING TG ORDER BY TG.created DESC LIMIT 1", sqlEngine)

last_date_day = format(last_date['created'][0])

top10Free_apps = pd.read_sql(
    "SELECT  TF.position, A.title, A.url, A.icon FROM `TOP_FREE` TF INNER JOIN APPS A ON A.appId = TF.appId WHERE country = 'USA' AND TF.CREATED = %s ORDER BY POSITION LIMIT 10",
    params=['2022-05-15'],
    con=sqlEngine).to_dict(orient='records')

dbConnection.close()

app = dash.Dash(__name__, suppress_callback_exceptions=True,
                external_stylesheets=[dbc.themes.LUX, dbc.icons.FONT_AWESOME],
                meta_tags=[{'name': 'viewport',
                            'content': 'width=device-width, initial-scale=1'}]
                )
