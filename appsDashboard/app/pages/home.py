# coding=utf8
import dash
import dash_bootstrap_components as dbc
from dash import dcc, html, Input, Output, callback

from querys import top10Paid_apps, top10Grossing_apps, top10Free_apps, top_paid_apps, last_date_data

# ------------------------------------------------------------------------------

output_cards_paid = []
output_cards_grossing = []

cont_list_top_paid_apps = len(top10Paid_apps)
cont_list_top_grossing_apps = len(top10Grossing_apps)

dash.register_page(__name__, path='/')

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
                                    "Puntuación " + '%s ⭐' % str(top10Paid_apps['score'].values[i]),
                                    className="card-text text-muted",
                                ),
                            ], className='justifyRelative'
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
                                    "Puntuación " + '%s ⭐' % str(top10Grossing_apps['score'].values[i]),
                                    className="card-text text-muted",
                                ),
                            ], className='justifyRelative'
                        ),
                    ),
                ], className="top-apps",
            ),
        ],

    ))

layout = html.Div([

    dbc.Row(
        [
            dbc.Col(
                dbc.Card([
                    dbc.CardHeader("Top Aplicaciones gratuitas"),

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
                    ),
                ]), className="cards",
            ),

            dbc.Col(
                [
                    dbc.Card(

                        dbc.CardBody([

                            dcc.Markdown(
                                "En esta aplicación web encontrarás información adicional "
                                "sobre las aplicaciones de Google Play, incluidos sus permisos, reseñas, "
                                "tecnologías o librerías, disposición en el mundo a través de varios mapas y gráficas analíticas."),
                            dcc.Markdown(
                                "Construido con [Python](https://www.python.org/) y [Dash](https://plotly.com/dash/), esta aplicación provee al usuario un análisis en "
                                "profundidad de datos que no podemos obtener en la plataforma de aplicaciones "
                                "Android por defecto, Google Play."),

                            html.Div(
                                children=[
                                    html.Img(
                                        src="https://rapids.ai/assets/images/Plotly_Dash_logo.png",
                                        className="img", height='325px'
                                    )
                                ], style={'textAlign': 'center'}

                            ),

                        ], className=''
                        ), className="cards",
                    )

                ], style={'width': '100%'}

            ),
        ],
        className='justifyRelative'

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

                                    output_cards_paid),
                            ], class_name="top-apps-row"), style={'overflowX': 'auto'},
                    ), className="cards", style={'overflowX': 'auto'}
                ),
            ),

            dbc.Col(
                dbc.Card(
                    dbc.CardBody(
                        dbc.Row(
                            [
                                dbc.CardHeader("Top Aplicaciones ingreso"),

                                dbc.Col(

                                    output_cards_grossing), ], class_name="top-apps-row"),
                    ), className="cards"
                ),
            ),

        ], className='justifyRelative'
    )

]
    , className="justifyRelative",
)


@callback(
    Output(component_id='date_home', component_property='children'),
    Input('url', 'pathname')

)
def get_home_data(pathname):
    container = "{}".format(last_date_data['created'][0])

    return container
