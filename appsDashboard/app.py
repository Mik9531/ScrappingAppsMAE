# coding=utf8
from sqlalchemy import create_engine

import dash

import dash_bootstrap_components as dbc

import pandas as pd

# Importamos los datos desde nuestro mysql

sqlEngine = create_engine('mysql+pymysql://root:kalandria@testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com/appsData')

dbConnection = sqlEngine.connect()

limit_table = " LIMIT 15"


def limit():
    return pd.read_sql(
        "SELECT * from APPS A GROUP BY A.appId ORDER BY A.maxInstalls DESC" + limit_table,
        sqlEngine).to_dict(orient='records')


# MAPAS

top_grossing_apps = pd.read_sql(
    "SELECT TG.created, A.title, TG.position, TG.country, TG.appId, A.icon, A.url, A.developer, A.score, A.summary from GROSSING TG INNER JOIN APPS A ON (A.appId "
    "= "
    "TG.appId)" + limit_table, con=dbConnection)

top_free_apps = pd.read_sql(
    "SELECT TG.created, A.title, TG.position, TG.country, TG.appId, A.icon, A.url, A.developer, A.score, A.summary from TOP_FREE TG INNER JOIN APPS A ON (A.appId "
    "= "
    "TG.appId)" + limit_table, con=dbConnection)

top_paid_apps = pd.read_sql(
    "SELECT TG.created, A.title, TG.position, TG.country, TG.appId, A.icon, A.url, A.developer, A.score, A.summary from TOP_PAID TG INNER JOIN APPS A ON (A.appId "
    "= "
    "TG.appId)" + limit_table, con=dbConnection)

titles_apps = limit()

titles_apps_list = pd.read_sql(
    "SELECT * from APPS A GROUP BY A.appId ORDER BY A.maxInstalls DESC" + limit_table
    , con=dbConnection)

contApps = len(titles_apps)

allReviews = pd.read_sql(
    "SELECT appId from REVIEWS" + limit_table,
    sqlEngine).to_dict(orient='records')

contReviews = len(allReviews)

allTechs = pd.read_sql(
    "SELECT appId from APPS WHERE programmingLanguage IS NOT NULL AND programmingLanguage != ''" + limit_table,
    sqlEngine).to_dict(orient='records')

contTechs = len(allTechs)

# HOME

# Seleccionamos la fecha inicial de la base de datos (y fecha mínima a poder seleccionar)
init_date = pd.read_sql(
    "SELECT TF.created from TOP_FREE TF WHERE country = 'USA' ORDER BY TF.created ASC LIMIT 1", sqlEngine)

# Seleccionamos la fecha actual (y fecha máxima a seleccionar)

last_date = pd.read_sql(
    "SELECT TF.created from TOP_FREE TF WHERE country = 'USA' ORDER BY TF.created DESC LIMIT 1", sqlEngine)

last_date_day = format(last_date['created'][0])

top10Free_apps = pd.read_sql(
    "SELECT  TF.position, A.title, A.url, A.icon, A.created FROM `TOP_FREE` TF INNER JOIN APPS A ON A.appId = TF.appId WHERE country = 'USA' AND TF.CREATED = %s GROUP BY TF.appId ORDER BY POSITION LIMIT 10",
    params=[last_date_day],
    con=sqlEngine).to_dict(orient='records')

# APLICACIONES

top10Paid_apps = pd.read_sql(
    "SELECT  TP.position, A.title, A.url, A.icon, A.created, A.summary, A.score FROM `TOP_PAID` TP INNER JOIN APPS A ON A.appId = TP.appId WHERE country = 'USA' AND TP.CREATED = %s GROUP BY TP.appId ORDER BY POSITION LIMIT 10",
    params=[last_date_day],
    con=sqlEngine)

top10Grossing_apps = pd.read_sql(
    "SELECT  TG.position, A.title, A.url, A.icon, A.created, A.summary, A.score FROM `GROSSING` TG INNER JOIN APPS A ON A.appId = TG.appId WHERE country = 'USA' AND TG.CREATED = %s GROUP BY TG.appId ORDER BY POSITION LIMIT 10",
    params=[last_date_day],
    con=sqlEngine)

dbConnection.close()

application = dash.Dash(__name__, suppress_callback_exceptions=True,
                        external_stylesheets=[dbc.themes.BOOTSTRAP, dbc.icons.FONT_AWESOME],
                        meta_tags=[{'name': 'viewport',
                                    'content': 'width=device-width, initial-scale=1'}]
                        )
