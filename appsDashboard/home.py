# coding=utf8
from dash import Dash, dcc, html, Input, Output, dash_table
import dash_bootstrap_components as dbc
from app import app, top_apps, last_date

# ------------------------------------------------------------------------------

output_cards = []

cont_list_top_apps = len(top_apps.to_dict('records'))

for i in range(cont_list_top_apps):
    output_cards.append(dbc.Card(
        [
            dbc.Row(
                [
                    dbc.Col(
                        dbc.CardImg(
                            src=top_apps['icon'].values[i],
                        ), class_name="card-img"
                    ),
                    dbc.Col(
                        dbc.CardBody(
                            [
                                html.H4(top_apps['title'].values[i], className="card-title"),
                                html.P(
                                    top_apps['summary'].values[i],
                                    className="card-text",
                                ),
                                html.Small(
                                    "Puesto #" + str(top_apps['position'].values[i]),
                                    className="card-text text-muted",
                                ),
                            ]
                        ),
                    ),
                ], className="top-apps"
            ),
        ],

    ))

home_layout = html.Div([

    dbc.Card(
        dbc.CardBody([
            html.H3("¡Bienvenido a los resultados del scraping!", style={'textAlign': 'left'}),
            html.P("En esta página encontrarás todos los datos asociados al scraping realizado hasta el día:"),
            html.Div(id='date_home', children=[]),
        ]), className="cards"
    ),

    dbc.Row(
        [
            dbc.Col(
                dbc.Card(
                    dbc.CardBody([
                        html.Iframe(srcDoc='''
           <a class="twitter-timeline" href="https://twitter.com/GooglePlay?ref_src=twsrc%5Etfw">Tweets by GooglePlay</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
        ''',
                                    style={"height": "600px", "width": "100%"})
                    ]), className="cards"
                ), width={'size': 4, "offset": 8, 'order': 1}),
        ]

    ),

    dbc.Card(
        dbc.CardBody(
            dbc.Row(
                [
                    dbc.Col(
                        output_cards)], class_name="top-apps-row"),
        ), className="cards"
    ),

])


@app.callback(
    Output(component_id='date_home', component_property='children'),
    Input('url', 'pathname')

)


def get_home_data(pathname):
    container = "{}".format(last_date['created'][0])

    return container
