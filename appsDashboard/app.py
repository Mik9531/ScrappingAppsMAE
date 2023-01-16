# coding=utf8
from sqlalchemy import create_engine
import dash
import pandas as pd
from dash import dcc, html, Input, Output, callback, Dash
import dash_bootstrap_components as dbc
# from top_maps import top_maps_layout
# from graphics import graphics_layout
# from home import home_layout
# from totalApps import apps_layout
# from pages.userApp import user_app_layout
from dash_iconify import DashIconify

application = Dash(__name__, suppress_callback_exceptions=True, use_pages=True,
                   external_stylesheets=[dbc.themes.BOOTSTRAP, dbc.icons.FONT_AWESOME],
                   meta_tags=[{'name': 'viewport',
                               'content': 'width=device-width, initial-scale=1'}]
                   )

print(dash.__version__)

# Importamos los datos desde nuestro mysql

sqlEngine = create_engine('mysql+pymysql://root:kalandria@testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com/appsData')

dbConnection = sqlEngine.connect()

limit_table_top = " WHERE TG.created BETWEEN '2023-01-16' AND '2023-01-16' ORDER BY TG.country "
limit_table_apps = ""

limit_table_top = " LIMIT 10 "
limit_table_apps = " LIMIT 10 "


def limit():
    return pd.read_sql(
        "SELECT * from APPS A GROUP BY A.appId ORDER BY A.maxInstalls DESC" + limit_table_apps,
        sqlEngine).to_dict(orient='records')


# MAPAS

top_grossing_apps = pd.read_sql(
    "SELECT TG.created, A.title, TG.position, TG.country, TG.appId, A.icon, A.url, A.developer, A.score, A.summary from GROSSING TG INNER JOIN APPS A ON (A.appId "
    "= "
    "TG.appId)" + limit_table_top, con=dbConnection)

top_free_apps = pd.read_sql(
    "SELECT TG.created, A.title, TG.position, TG.country, TG.appId, A.icon, A.url, A.developer, A.score, A.summary from TOP_FREE TG INNER JOIN APPS A ON (A.appId "
    "= "
    "TG.appId)" + limit_table_top, con=dbConnection)

top_paid_apps = pd.read_sql(
    "SELECT TG.created, A.title, TG.position, TG.country, TG.appId, A.icon, A.url, A.developer, A.score, A.summary from TOP_PAID TG INNER JOIN APPS A ON (A.appId "
    "= "
    "TG.appId)" + limit_table_top, con=dbConnection)

titles_apps = limit()

titles_apps_list = pd.read_sql(
    "SELECT * from APPS A GROUP BY A.appId ORDER BY A.maxInstalls DESC" + limit_table_apps
    , con=dbConnection)

contApps = len(titles_apps)

allReviews = pd.read_sql(
    "SELECT appId from REVIEWS" + limit_table_apps,
    sqlEngine).to_dict(orient='records')

contReviews = len(allReviews)

# Cambiar por obtencion de APPS anterior

allTechs = pd.read_sql(
    "SELECT appId,programmingLanguage from APPS WHERE programmingLanguage != 'None' AND programmingLanguage != '' " + limit_table_apps,
    sqlEngine).to_dict(orient='records')

contTechs = len(allTechs)

# HOME

# Intentar cambiar por obtencion de TOPS anterior

# Seleccionamos la fecha inicial de la base de datos (y fecha mínima a poder seleccionar)
init_date = pd.read_sql(
    "SELECT TF.created from TOP_FREE TF WHERE country = 'USA' ORDER BY TF.created LIMIT 1", sqlEngine)

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

titles_apps = []

server = application.server

# Layout
application.layout = html.Div(
    [
        dcc.Location(id='url', refresh=False),

        dbc.Navbar(
            children=[
                dbc.Container(
                    [
                        html.A(
                            dbc.Row(
                                dbc.Col(DashIconify(
                                    icon="carbon:dashboard",
                                    width=50, flip="horizontal"
                                    , className="ms-2")),
                                align="center",
                                className="g-0",
                            ),
                            href="/",
                            style={"textDecoration": "none"},
                            className="w-50",

                        ),
                        html.A(
                            dbc.Row(
                                dbc.Col(dbc.NavbarBrand("Google Play Scraping Dashboard", className="ms-2")),
                                align="center",
                                className="g-0",
                            ),
                            href="/",
                            style={"textDecoration": "none"},
                            className="w-50",

                        ),
                        dbc.Row(
                            [
                                dbc.NavbarToggler(id="navbar-toggler"),
                                dbc.Collapse(
                                    dbc.Nav(
                                        [
                                            dbc.NavItem(dbc.NavLink("Home", href="/")),
                                            dbc.NavItem(dbc.NavLink("Aplicaciones", href="/apps")),
                                            dbc.NavItem(dbc.NavLink("Mapas", href="/top-maps")),
                                            dbc.NavItem(dbc.NavLink("Gráficas", href="/graphics")),
                                            dbc.NavItem(dbc.NavLink("Añadir", href="/userApp")),
                                        ],
                                    ),
                                    id="navbar-collapse",
                                    is_open=False,
                                    navbar=True,
                                ),
                            ],
                            className="flex-grow-1",
                        ),
                    ],
                    fluid=True,
                )],
            dark=True,
            color="dark",
        ),

        dash.page_container

        # html.Div(id='page-content', className="page-content"),

    ])


@callback(
    Output("page-content", "children"),
    Input('url', 'pathname')
)
def switch_tab(pathname):
    print(pathname)
    if pathname == '/home' or pathname == '/':
        return None
    # elif pathname == '/top-maps':
    #     return top_maps_layout
    # elif pathname == '/apps':
    #     return apps_layout
    # elif pathname == '/graphics':
    #     return graphics_layout
    # elif pathname == '/userApp':
    #     return user_app_layout


if __name__ == '__main__':
    application.run_server(debug=True, host='0.0.0.0', port=8080)
