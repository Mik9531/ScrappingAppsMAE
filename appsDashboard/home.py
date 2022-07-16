# coding=utf8
from dash import Dash, dcc, html, Input, Output, dash_table
import dash_bootstrap_components as dbc
from app import app, top_paid_apps, last_date, top10Free_apps, top_grossing_apps, top10Paid_apps, top10Grossing_apps

# ------------------------------------------------------------------------------

output_cards_paid = []
output_cards_grossing = []

cont_list_top_paid_apps = len(top10Paid_apps)
cont_list_top_grossing_apps = len(top10Grossing_apps)

for i in range(cont_list_top_paid_apps):
    output_cards_paid.append(dbc.Card(
        [

            dbc.Row(
                [

                    dbc.Col(
                        dbc.CardImg(
                            src=top10Paid_apps['icon'].values[i],
                        ), class_name="card-img"
                    ),
                    dbc.Col(
                        dbc.CardBody(
                            [

                                html.H4(top10Paid_apps['title'].values[i], className="card-title"),
                                html.P(
                                    top_paid_apps['summary'].values[i],
                                    className="card-text",
                                ),
                                html.Small(
                                    "Puesto #" + str(top10Paid_apps['position'].values[i]),
                                    className="card-text text-muted",
                                ),
                            ]
                        ),
                    ),
                ], className="top-apps"
            ),
        ],

    ))

for i in range(cont_list_top_grossing_apps):
    output_cards_grossing.append(dbc.Card(
        [

            dbc.Row(
                [

                    dbc.Col(
                        dbc.CardImg(
                            src=top10Grossing_apps['icon'].values[i],
                        ), class_name="card-img"
                    ),
                    dbc.Col(
                        dbc.CardBody(
                            [

                                html.H4(top10Grossing_apps['title'].values[i], className="card-title"),
                                html.P(
                                    top10Grossing_apps['summary'].values[i],
                                    className="card-text",
                                ),
                                html.Small(
                                    "Puesto #" + str(top10Grossing_apps['position'].values[i]),
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

    dbc.Row(
        [
            dbc.Col(
                dbc.Carousel(
                    items=[
                        {
                            "key": i['position'],
                            "src": i['icon'],
                            "caption": i['title'],
                            "img_style": {"max-height": "450px", "max-width": "1300px"},
                            "caption_class_name": 'caption'
                        } for i in top10Free_apps

                    ], interval=5000,
                    ride="carousel",
                    className="slider"
                ), width={'size': 7, "offset": 0, 'order': 1}),

            dbc.Col(
                dbc.Row(
                    [

                        dbc.Card(
                            dbc.CardBody([
                                html.Iframe(srcDoc='''
                                                          <a class="twitter-timeline" href="https://twitter.com/GooglePlay?ref_src=twsrc%5Etfw">Tweets by GooglePlay</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                                                       ''',
                                            style={"height": "450px", "width": "100%"})
                            ]), className="cards"
                        ),
                    ])

                , width={'size': 5, "offset": 0, 'order': 2}),
        ]

    ),

    dbc.Row(
        [
            dbc.Col(
                dbc.Card(
                    dbc.CardBody(
                        dbc.Row(
                            [
                                dbc.CardHeader("Top Aplicaciones de pago"),

                                dbc.Col(

                                    output_cards_paid), ], class_name="top-apps-row"),
                    ), className="cards"
                ), width={'size': 6, "offset": 0, 'order': 0}),

            dbc.Col(
                dbc.Card(
                    dbc.CardBody(
                        dbc.Row(
                            [
                                dbc.CardHeader("Top Aplicaciones ingreso"),

                                dbc.Col(

                                    output_cards_grossing), ], class_name="top-apps-row"),
                    ), className="cards"
                ), width={'size': 6, "offset": 0, 'order': 1}),

        ])

]
    , className="home"
)


@app.callback(
    Output(component_id='date_home', component_property='children'),
    Input('url', 'pathname')

)
def get_home_data(pathname):
    container = "{}".format(last_date['created'][0])

    return container
