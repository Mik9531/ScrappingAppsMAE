# coding=utf8

from app import app
from dash import Dash, dcc, html, Input, Output
import dash_bootstrap_components as dbc
import pandas as pd
from sqlalchemy import create_engine

from top_grossing import top_grossing_layout
from home import home_layout
from listado_apks import obtain_layout

# Importamos los datos desde nuestro mysql

sqlEngine = create_engine('mysql+pymysql://root:kalandria@testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com/appsData')

dbConnection = sqlEngine.connect()

df = pd.read_sql(
    "SELECT TG.created, A.title, TG.position, TG.country, TG.appId from TOP_GROSSING TG INNER JOIN APPS A ON (A.appId "
    "= "
    "TG.appId)", con=dbConnection)

titles_apps = pd.read_sql(
    "SELECT A.title, TG.appId from TOP_GROSSING TG INNER JOIN APPS A ON (A.appId = "
    "TG.appId) ORDER BY TG.created DESC", sqlEngine).to_dict(orient='records')

# Seleccionamos la fecha inicial de la base de datos (y fecha mínima a poder seleccionar)

init_date = pd.read_sql(
    "SELECT TG.created from TOP_GROSSING TG LIMIT 1", sqlEngine)

# Seleccionamos la fecha actual (y fecha máxima a poder seleccionar)

last_date = pd.read_sql(
    "SELECT TG.created from TOP_GROSSING TG ORDER BY TG.created DESC LIMIT 1", sqlEngine)

init_date = init_date['created'].values[0]
last_date = last_date['created'].values[0]
dbConnection.close()

# ------------------------------------------------------------------------------

# Enlaces
link_tabs_layout = html.Div([
    dbc.Row([
        dbc.Col(dcc.Link('Home', href='/'), width=2),
        dbc.Col(dcc.Link('Mapa Ingresos', href='/top-grossing'), width=2),
        dbc.Col(dcc.Link('Mapa Ingresos', href='/obtain'), width=2)
    ], className="index-tabs"
    )
])

# Layout
app.layout = html.Div([
    dbc.Row(
        [

            dbc.Col(dbc.Card(
                dbc.CardBody(
                    dbc.Row(
                        [

                            dbc.Col(html.H5("APLICACIÓN WEB CON DASH"), width=6, style={'text-align': 'left'}),
                            dbc.Col(link_tabs_layout, width=6),
                        ]
                    ), className="top-bar"
                ),

            ),
                width={'size': 12, "offset": 0, 'order': 1}
            ),
        ]
    ),

    dcc.Location(id='url', refresh=False),

    html.Div(id='page-content')

])


@app.callback(
    Output("page-content", "children"),
    Input('url', 'pathname')
)
def switch_tab(pathname):
    print(pathname)
    if pathname == '/home' or pathname == '/':
        return home_layout
    elif pathname == '/top-grossing':
        return top_grossing_layout
    elif pathname == '/obtain':
        return obtain_layout


if __name__ == '__main__':
    app.run_server(debug=True, host='0.0.0.0', port=8080, threaded=True, dev_tools_hot_reload=True)
