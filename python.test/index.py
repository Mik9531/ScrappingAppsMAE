# coding=utf8

from app import app
from dash import Dash, dcc, html, Input, Output
import dash_bootstrap_components as dbc

from top_grossing import top_grossing_layout
from home import home_layout

# ------------------------------------------------------------------------------
# app_tabs = html.Div(
#     [
#         dbc.Tabs(
#             [
#                 dbc.Tab(label="Home", tab_id="tab-home", labelClassName="text-success font-weight-bold",
#                         activeLabelClassName="text-danger"),
#                 dbc.Tab(label="Mapa Ingresos", tab_id="tab-grossing", labelClassName="text-success font-weight-bold",
#                         activeLabelClassName="text-danger"),
#             ],
#             id="tabs",
#             active_tab="tab-home",
#         ),
#     ], className="mt-3"
# )

# link_tabs_layout = html.Div(
#     dbc.Row(
#         [
#             [
#                 dcc.Link('Go to Page 1', href='/top-grossing'),
#
#                 dcc.Link('Go to Page 2', href='/top-grossing'),
#
#             ]
#         ])
# )

link_tabs_layout = html.Div([
    dbc.Row([
        dbc.Col(dcc.Link('Home', href='/'), width=3),
        dbc.Col(dcc.Link('Mapa Ingresos', href='/top-grossing'), width=3)
    ]
    )
])

app.layout = html.Div([
    dbc.Row(
        [

            dbc.Col(dbc.Card(
                dbc.CardBody(
                    dbc.Row(
                        [

                            dbc.Col(html.H5("APLICACIÓN WEB CON DASH HOME"), width=6, className="top_bar"),
                            dbc.Col(link_tabs_layout, width=6, className="index_tabs", align='right'),
                        ]
                    ),
                ),

            ),
                width={'size': 12, "offset": 0, 'order': 1}
            ),
        ]
    ),
    html.Hr(),

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

    # You could also return a 404 "URL not found" page here


if __name__ == '__main__':
    app.run_server(debug=True, host='0.0.0.0', port=8080, threaded=True, dev_tools_hot_reload=True)
