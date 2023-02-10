# coding=utf8
import dash
import dash_bootstrap_components as dbc
from dash import dcc, html
from dash_iconify import DashIconify

application = dash.Dash(__name__, suppress_callback_exceptions=True, use_pages=True, eager_loading=True,
                        update_title='Actualizando...', prevent_initial_callbacks=False,
                        external_stylesheets=[dbc.themes.BOOTSTRAP, dbc.icons.FONT_AWESOME],
                        meta_tags=[{'name': 'viewport',
                                    'content': 'width=device-width, initial-scale=1'}]
                        )

app = application.server

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

        dash.page_container,

        html.Div(id='page-content', className="page-content"),

    ])

if __name__ == '__main__':
    application.run_server(debug=False, host='0.0.0.0', port=8080)
