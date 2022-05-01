# coding=utf8

from app import app
from dash import Dash, dcc, html, Input, Output
import dash_bootstrap_components as dbc

from top_grossing import top_grossing_layout
from home import home_layout

# ------------------------------------------------------------------------------
app_tabs = html.Div(
    [
        dbc.Tabs(
            [
                dbc.Tab(label="Home", tab_id="tab-home", labelClassName="text-success font-weight-bold",
                        activeLabelClassName="text-danger"),
                dbc.Tab(label="Mapa Ingresos", tab_id="tab-grossing", labelClassName="text-success font-weight-bold",
                        activeLabelClassName="text-danger"),
            ],
            id="tabs",
            active_tab="tab-home",
        ),
    ], className="mt-3"
)

app.layout = html.Div([
    dbc.Row(
        [

            dbc.Col(dbc.Card(
                dbc.CardBody(
                    dbc.Row(
                        [

                            dbc.Col(html.H5("APLICACIÓN WEB CON DASH HOME"), width=6, className="top_bar"),
                            dbc.Col(app_tabs, width=6, className="index_tabs", align='right'),
                        ]
                    ),
                ),

            ),
                width={'size': 12, "offset": 0, 'order': 1}
            ),
        ]
    ),
    html.Hr(),

    html.Div(id='tabs_content', children=[], className="cards")

])


@app.callback(
    Output("tabs_content", "children"),
    [Input("tabs", "active_tab")]
)
def switch_tab(tab_chosen):
    if tab_chosen == "tab-home":
        return home_layout
    elif tab_chosen == "tab-grossing":
        return top_grossing_layout


if __name__ == '__main__':
    app.run_server(debug=True, host='0.0.0.0', port=8080, threaded=True, dev_tools_hot_reload=True)
