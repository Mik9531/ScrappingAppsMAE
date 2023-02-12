# coding=utf8

import dash
import dash_bootstrap_components as dbc
from dash import dcc, html, Output, Input, State
from dash_iconify import DashIconify

enablePages = False
# container = dash.page_container
container = None

application = dash.Dash(__name__, suppress_callback_exceptions=True, use_pages=enablePages, eager_loading=True,
                        update_title='Actualizando...', prevent_initial_callbacks=False,
                        external_stylesheets=[dbc.themes.BOOTSTRAP, dbc.icons.FONT_AWESOME
                                              ],
                        meta_tags=[
                            # {'name': 'viewport',
                            #  'content': 'width=device-width, initial-scale=1.0, maximum-scale=1.2, minimum-scale=0.5,'}
                        ]
                        )

app = application.server

navLinks = dbc.Nav(
    [
        dbc.NavItem(dbc.NavLink("Home", href="/")),
        dbc.NavItem(dbc.NavLink("Aplicaciones", href="/apps")),
        dbc.NavItem(dbc.NavLink("Mapas", href="/top-maps")),
        dbc.NavItem(dbc.NavLink("Gráficas", href="/graphics")),
        dbc.NavItem(dbc.NavLink("Añadir", href="/userApp")),
    ],
),

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
                                    icon="carbon:dashboard-reference", color="white",
                                    width=40,
                                    height=30,
                                    className="icon"
                                ),
                                ),
                            ),

                            href="/",

                        ),
                        html.A(
                            dbc.Row(
                                dbc.Col(dbc.NavbarBrand("Google Play Analytics Panel")),
                                align="center",
                            ),
                            href="/",
                            style={"textDecoration": "none"},
                            className='homeText'

                        ),
                        dbc.Row(
                            [
                                dbc.NavbarToggler(id="navbar-toggler", n_clicks=0),
                                dbc.Collapse(
                                    navLinks,
                                    id="navbar-collapse",
                                    is_open=False,
                                    navbar=True,
                                    className='links',

                                ),
                            ],
                        ),

                    ],
                    className="topnav",

                    fluid=True,
                )],
            dark=True,
            color="dark",
        ),

        container,

        html.Div(id='page-content', className="page-content"),

        # footer
        html.Footer(
            children=[
                html.Div(
                    children=[
                        dbc.Row([
                            dbc.Col(
                                html.P(
                                    '© 2023 Miguel Afán Espinosa',
                                    style={
                                        'textAlign': 'center',
                                        'color': 'white',
                                    }
                                ),
                                width=6
                            ),
                            dbc.Col([
                                html.P(
                                    'Contacto:',
                                    style={
                                        'color': 'white',
                                        'textAlign': 'center',
                                        'marginTop': '5px'
                                    }
                                ),

                                html.P('Email: miguel.afanespinosa@alum.uca.es',
                                       style={'color': 'white', 'textAlign': 'center'}),

                                html.P('Dirección: Av. Universidad de Cádiz, 10, 11519 Puerto Real, Cádiz',
                                       style={'color': 'white', 'textAlign': 'center'}),

                            ],

                                width=6
                            ),

                        ]

                        ),

                    ],
                    style={
                        'backgroundColor': 'rgba(0, 0, 0, 0.84)',
                        'padding': '10px'
                    }

                )
            ]
        )
    ])


@application.callback(
    Output("navbar-collapse", "is_open"),
    [Input("navbar-toggler", "n_clicks")],
    [State("navbar-collapse", "is_open")],
)
def toggle_navbar_collapse(n, is_open):
    if n:
        return not is_open
    return is_open


if __name__ == '__main__':
    application.run_server(debug=True, host='0.0.0.0', port=8080)
