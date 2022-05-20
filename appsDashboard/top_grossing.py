# coding=utf8
from datetime import date
from datetime import datetime

import dash_bootstrap_components as dbc
import plotly.graph_objects as go
from dash import dcc, html, Input, Output

from app import app, last_date, init_date, titles_apps, top_grossing_apps

init_date = init_date['created'].values[0]
last_date = last_date['created'].values[0]

# ------------------------------------------------------------------------------
# App layout


top_grossing_layout = html.Div([

    dbc.Alert("Si no se ha seleccionado ninguna aplicación, se mostrará la aplicación #1 de cada país",
              color="primary", dismissable=True, is_open=True, style={"textAlign": "center"}),

    dbc.Row(
        [

            dbc.Col(dbc.Card(
                dbc.CardBody(
                    [
                        html.P("Selecciona la fecha:", className="card-title",
                               style={'padding-bottom': '15px', 'box-sizing': 'inherit'}),
                        # Selector calendario
                        dcc.DatePickerSingle(
                            id='slct_year',
                            min_date_allowed=init_date,
                            max_date_allowed=last_date,
                            initial_visible_month=date(2022, 4, 1),
                            date=last_date,
                            display_format='DD/MM/YYYY',
                            style={'margin': 'auto'}
                        ),

                        html.P("Selecciona la aplicación:", className="card-title",
                               style={'padding-bottom': '15px', 'box-sizing': 'inherit', "margin-top": "15px"}),
                        dcc.Dropdown(id="slct_app",
                                     options=[
                                         {"label": i['title'], "value": i['appId']} for i in titles_apps],
                                     multi=False,
                                     value=None,
                                     style={'width': "100%"}
                                     ),

                    ]
                ),
                className="cards"
            ),
                width={'size': 4, "offset": 0, 'order': 1}
            ),
            dbc.Col(dbc.Card(
                dbc.CardBody(
                    [
                        dbc.CardHeader("Posición de la aplicación"),
                        dcc.Graph(id='apps_map', figure={})
                    ]
                ),
                className="cards"

            ),
                width={'size': 8, "offset": 0, 'order': 2}
            ),
        ]
    ),

])


# ------------------------------------------------------------------------------
# Conectamos los graficos Plotly con los componentes Dash
@app.callback(

    Output(component_id='apps_map', component_property='figure'),
    [Input(component_id='slct_year', component_property='date'),
     Input(component_id='slct_app', component_property='value')]
)
def update_graph(date_selected, app_selected):
    date_selected = datetime.strptime(date_selected, '%Y-%m-%d')
    date_selected = date_selected.date()

    dff = top_grossing_apps.copy()
    print(dff.head())

    dff = dff[dff.created == date_selected]
    print(dff.head())

    if app_selected is None:
        dff = dff[dff.position == 1]
    else:
        dff = dff[dff.appId == app_selected]

    print(dff.head())

    fig = go.Figure(data=go.Choropleth(
        locations=dff['country'],
        z=dff['position'].astype(int),
        text=dff['title'],
        zmin=0,
        zmax=50,
        colorscale='Reds',
        autocolorscale=False,
        reversescale=True,
        marker_opacity=0.5,
        marker_line_width=0,
        colorbar_title='Puesto',
    ))

    fig.update_layout(
        margin={"r": 0, "t": 40, "l": 0, "b": 0},
        geo=dict(
            showframe=False,
            showcoastlines=False,
            projection_type='equirectangular'
        ),
        annotations=[dict(
            x=0.55,
            y=0.1,
            xref='paper',
            yref='paper',
            text='Tabla: TOP_GROSSING',
            showarrow=False
        )]
    )

    return fig
