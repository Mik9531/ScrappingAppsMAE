# coding=utf8

import dash
import dash_bootstrap_components as dbc
from dash import dcc, html, Output, Input, State
from dash_iconify import DashIconify

application = dash.Dash(__name__, suppress_callback_exceptions=True, use_pages=False, eager_loading=True,
                        update_title='Actualizando...', prevent_initial_callbacks=False,
                        external_stylesheets=[dbc.themes.BOOTSTRAP, dbc.icons.FONT_AWESOME],
                        meta_tags=[
                            {'name': 'viewport',
                             'content': 'width=device-width, initial-scale=1.0, maximum-scale=1.2, minimum-scale=0.5,'}
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
                                    height=40,
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

        # dash.page_container,

        html.Div(id='page-content', className="page-content"),

        html.Div(className="footerStyle"),

    ])

if __name__ == '__main__':
    application.run_server(debug=True, host='0.0.0.0', port=8080)


@dash.callback(
    Output("navbar-collapse", "is_open"),
    [Input("navbar-toggler", "n_clicks")],
    [State("navbar-collapse", "is_open")],
)
def toggle_navbar_collapse(n, is_open):
    if n:
        return not is_open
    return is_open
