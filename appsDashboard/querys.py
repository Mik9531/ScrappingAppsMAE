# coding=utf8
import time

import pandas as pd
from sqlalchemy import create_engine, text

# ------------------------------------------------------------------------------

start_time = time.time()

limit_table_top = " WHERE TG.created BETWEEN '2023-01-01' AND '2023-03-13' ORDER BY TG.country "
limit_table_apps = " LIMIT 100 "

sqlEngine = create_engine(
    'mysql+pymysql://root:kalandria@testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com/appsData')

dbConnection = sqlEngine.connect()

# from querys import top10Paid_apps, top10Grossing_apps, top10Free_apps, top_paid_apps, last_date_data


# Aplicaciones para gráficas
df = pd.read_sql(
    "SELECT programmingLanguage, adSupported,androidVersionText,contentRating,created,developer,editorsChoice,free,genre,installs,maxInstalls,price,ratings,updated,released,reviews,score from APPS A ORDER BY A.maxInstalls DESC" + limit_table_apps,
    con=dbConnection)

# Cambiamos el nombre de las columnas

df = df.rename(columns={'adSupported': 'Contiene Anuncios', 'androidVersionText': 'Versión Android',
                        'appId': 'ID Aplicación', 'contentRating': 'Calificación de contenido',
                        'created': 'Creado', 'programmingLanguage': 'Lenguaje de programación',
                        'developer': 'Desarrollador', 'editorsChoice': 'Elección de los editores',
                        'free': 'Gratuito', 'genre': 'Genero',
                        'installs': 'Instalaciones máximas', 'icon': 'Icono',
                        'maxInstalls': 'Instalaciones', 'price': 'Precio',
                        'ratings': 'Valoraciones', 'updated': 'Actualizado',
                        'released': 'Publicado', 'reviews': 'Reseñas',
                        'score': 'Puntuación'})

dataGraphs = pd.concat([df.columns.to_frame().T, df], ignore_index=True).values.tolist()

titles_apps_list = pd.read_sql(
    "SELECT * from APPS A GROUP BY A.appId ORDER BY A.maxInstalls DESC" + limit_table_apps
    , con=dbConnection)

titles_apps_list = pd.read_sql(
    "SELECT * from APPS A GROUP BY A.appId ORDER BY A.maxInstalls DESC" + limit_table_apps
    , con=dbConnection)

titles_apps = titles_apps_list.to_dict(orient='records')

# # Seleccionamos la fecha inicial de la base de datos (y fecha mínima a poder seleccionar)

init_date = pd.read_sql(
    "SELECT TF.created from TOP_FREE TF WHERE country = 'ALA' ORDER BY TF.created LIMIT 1", dbConnection)

last_date_data = pd.read_sql(
    "SELECT TF.created from TOP_FREE TF WHERE country = 'ALA' ORDER BY TF.created DESC LIMIT 1", dbConnection)

top_free_apps = pd.read_sql(
    "SELECT TG.created, A.title, TG.position, TG.country, TG.appId from TOP_FREE TG INNER JOIN APPS A ON (A.appId "
    "= "
    "TG.appId)" + limit_table_top, con=dbConnection)
#
top_paid_apps = pd.read_sql(
    "SELECT TG.created, A.title,A.summary, TG.position, TG.country, TG.appId from TOP_PAID TG INNER JOIN APPS A ON (A.appId "
    "= "
    "TG.appId)" + limit_table_top, con=dbConnection)

top_grossing_apps = pd.read_sql(
    "SELECT TG.created, A.title, A.summary, TG.position, TG.country, TG.appId from GROSSING TG INNER JOIN APPS A ON (A.appId "
    "= "
    "TG.appId)" + limit_table_top, con=dbConnection)

allTechs = pd.read_sql(
    "SELECT appId,programmingLanguage from APPS WHERE programmingLanguage != 'None' AND programmingLanguage != '' AND programmingLanguage != 'Desconocido' ORDER BY maxInstalls DESC" + limit_table_apps,
    sqlEngine).to_dict(orient='records')

allReviews = pd.read_sql(
    "SELECT appId from REVIEWS" + limit_table_apps,
    sqlEngine).to_dict(orient='records')

last_date_day = format(last_date_data['created'][0])

init_date = init_date['created'].values[0]
last_date = last_date_data['created'].values[0]

top10Free_apps = pd.read_sql(
    "SELECT  TF.position, A.title, A.url, A.icon, A.created FROM `TOP_FREE` TF INNER JOIN APPS A ON A.appId = TF.appId WHERE country = 'USA' AND TF.CREATED = %s GROUP BY TF.appId ORDER BY POSITION LIMIT 10",
    params=[last_date_day],
    con=sqlEngine).to_dict(orient='records')

top10Paid_apps = pd.read_sql(
    "SELECT  TP.position, A.title, A.url, A.icon, A.created, A.summary, A.score FROM `TOP_PAID` TP INNER JOIN APPS A ON A.appId = TP.appId WHERE country = 'USA' AND TP.CREATED = %s GROUP BY TP.appId ORDER BY POSITION LIMIT 10",
    params=[last_date_day],
    con=sqlEngine)

top10Grossing_apps = pd.read_sql(
    "SELECT  TG.position, A.title, A.url, A.icon, A.created, A.summary, A.score FROM `GROSSING` TG INNER JOIN APPS A ON A.appId = TG.appId WHERE country = 'USA' AND TG.CREATED = %s GROUP BY TG.appId ORDER BY POSITION LIMIT 10",
    params=[last_date_day],
    con=sqlEngine)

print("Carga de tablas realizada correctamente en %s segundos " % (time.time() - start_time))

dbConnection.close()
