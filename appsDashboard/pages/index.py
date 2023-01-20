# coding=utf8

from app import application
from dash import dcc, html, Input, Output, callback
import dash_bootstrap_components as dbc
from top_maps import top_maps_layout
# from graphics import graphics_layout
# from userApp import user_app_layout
# from home import home_layout
# from totalApps import apps_layout
from dash_iconify import DashIconify

titles_apps = []

# ------------------------------------------------------------------------------

server = application.server

# Layout
layout = html.Div(
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

        html.Div(id='page-content', className="page-content"),

    ])


@callback(
    Output("page-content", "children"),
    Input('url', 'pathname')
)
def switch_tab(pathname):
    print(pathname)
    if pathname == '/home' or pathname == '/':
        return layout
    # elif pathname == '/top-maps':
    #     return top_maps_layout
    # elif pathname == '/apps':
    #     return apps_layout
    # elif pathname == '/graphics':
    #     return graphics_layout
    # elif pathname == '/userApp':
    #     return user_app_layout


if __name__ == '__main__':
    application.run_server(debug=True, host='0.0.0.0', port=8080, threaded=True, dev_tools_hot_reload=True)
