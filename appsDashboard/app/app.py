# coding=utf8

import dash
import dash_bootstrap_components as dbc
from dash import dcc, html, Output, Input, State
from dash_iconify import DashIconify

application = dash.Dash(__name__, suppress_callback_exceptions=True, use_pages=False, eager_loading=False,
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

PLOTLY_LOGO = "https://images.plot.ly/logo/new-branding/plotly-logomark.png"

search_bar = dbc.Row(
    [
        dbc.Col(dbc.Input(type="search", placeholder="Search")),
        dbc.Col(
            dbc.Button(
                "Search", color="primary", className="ms-2", n_clicks=0
            ),
            width="auto",
        ),
    ],
    className="g-0 ms-auto flex-nowrap mt-3 mt-md-0",
    align="center",
)

# Layout
application.layout = html.Div(
    [
        dcc.Location(id='url', refresh=False),

        dbc.Navbar(
            dbc.Container(
                [
                    html.A(
                        dbc.Row(
                            dbc.Col(dbc.NavbarBrand("Analytics", className="ms-2")),
                            align="center",
                            className="g-0",
                        ),
                        href="/",
                        style={"textDecoration": "none"},
                    ),
                    dbc.Row(
                        [
                            dbc.NavbarToggler(id="navbar-toggler"),
                            dbc.Collapse(
                                dbc.Nav(
                                    [
                                        dbc.NavItem(dbc.NavLink("Home")),
                                        dbc.NavItem(dbc.NavLink("Page 1")),
                                        dbc.NavItem(
                                            dbc.NavLink("Page 2"),
                                            # add an auto margin after page 2 to
                                            # push later links to end of nav
                                            className="me-auto",
                                        ),
                                        dbc.NavItem(dbc.NavLink("Help")),
                                        dbc.NavItem(dbc.NavLink("About")),
                                        dbc.DropdownMenu(
                                            [
                                                dbc.DropdownMenuItem("Home"),
                                                dbc.DropdownMenuItem("Some Long Item"),
                                            ],
                                            class_name="mr-1",
                                            label="Menu",
                                        ),
                                    ],
                                    # make sure nav takes up the full width for auto
                                    # margin to get applied
                                    className="w-100",
                                ),
                                id="navbar-collapse",
                                is_open=False,
                                navbar=True,
                            ),
                        ],
                        # the row should expand to fill the available horizontal space
                        className="flex-grow-1",
                    ),
                ],
                fluid=True,
            ),
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
