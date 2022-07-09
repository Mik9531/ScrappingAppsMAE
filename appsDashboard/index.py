# coding=utf8

from app import app
from dash import dcc, html, Input, Output
import dash_bootstrap_components as dbc
from top_maps import top_maps_layout
from graphics import graphics_layout
from home import home_layout
from totalApps import apps_layout
from listado_apks import obtain_layout
from dash_iconify import DashIconify

# ------------------------------------------------------------------------------

# Enlaces
link_tabs_layout = html.Div([
    dbc.Row([
        dbc.Col(dcc.Link('Home', href='/', className="a-tabs"), className="col-tab"),
        dbc.Col(dcc.Link('Aplicaciones', href='/apps', className="a-tabs"), className="col-tab"),
        dbc.Col(dcc.Link('Mapas Aplicaciones', href='/top-maps', className="a-tabs"), className="col-tab"),
        dbc.Col(dcc.Link('Gráficos', href='/graphics', className="a-tabs"), className="col-tab"),
        dbc.Col(dcc.Link('Scraping', href='/obtain', className="a-tabs"), className="col-tab")
    ], className="index-tabs"
    )
])

server = app.server

# Layout
app.layout = html.Div([
    dbc.Row(
        [

            dbc.Col(dbc.Card(
                dbc.CardBody(
                    dbc.Row(
                        [
                            dbc.Col(DashIconify(
                                icon="carbon:dashboard",
                                width=40, flip="horizontal"
                            ), width=1),
                            dbc.Col(html.H5("Google Play Scraping Dashboard"),
                                    className="top-title"),
                            dbc.Col(link_tabs_layout, width=4),
                        ]
                    ), className="top-bar"
                ),

            ),
                width={'size': 12, "offset": 0, 'order': 1}
            ),
        ]
    ),

    dcc.Location(id='url', refresh=False),

    html.Div(id='page-content', className="page-content")

])


@app.callback(
    Output("page-content", "children"),
    Input('url', 'pathname')
)
def switch_tab(pathname):
    print(pathname)
    if pathname == '/home' or pathname == '/':
        return home_layout
    elif pathname == '/top-maps':
        return top_maps_layout
    elif pathname == '/obtain':
        return obtain_layout
    elif pathname == '/apps':
        return apps_layout
    elif pathname == '/graphics':
        return graphics_layout


if __name__ == '__main__':
    app.run_server(debug=True, host='0.0.0.0', port=8080, threaded=True, dev_tools_hot_reload=True)
