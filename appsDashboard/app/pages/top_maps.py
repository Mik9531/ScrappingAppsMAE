# # coding=utf8
# from datetime import date
# from datetime import datetime
#
# import dash
# import dash_bootstrap_components as dbc
# import plotly.graph_objects as go
# from dash import dcc, html, Input, Output, callback
#
# from querys import titles_apps, top_grossing_apps, top_paid_apps, top_free_apps, init_date, last_date
#
# # ------------------------------------------------------------------------------
# # App layout
#
# dash.register_page(__name__, path='/top-maps')
#
# layout = html.Div([
#
#     dbc.Alert("Si no se ha seleccionado ninguna aplicación, se mostrará la aplicación #1 de cada país",
#               color="primary", dismissable=True, is_open=True, style={"textAlign": "center"}),
#
#     dbc.Row(
#         [
#
#             dbc.Col(dbc.Card(
#                 dbc.CardBody(
#                     [
#                         html.P("Selecciona la fecha:", className="card-title",
#                                style={'padding-bottom': '15px', 'box-sizing': 'inherit'}),
#                         # Selector calendario
#                         dcc.DatePickerSingle(
#                             id='slct_year',
#                             initial_visible_month=date(2022, 4, 1),
#                             display_format='DD/MM/YYYY',
#                             style={'width': "100%"}
#                         ),
#                         dcc.Loading(
#                             id="loading-2",
#                             type="default",
#                             children=html.Div(id="loading-output-maps"),
#                             fullscreen=True
#
#                         ),
#
#                         html.P("Selecciona la aplicación:", className="card-title",
#                                style={'padding-bottom': '15px', 'box-sizing': 'inherit', "margin-top": "15px"}),
#                         dcc.Dropdown(id="slct_app_drop",
#                                      multi=False,
#                                      value=None,
#                                      style={'width': "100%"},
#                                      placeholder="Selecciona..."
#                                      ),
#
#                     ]
#                 ),
#                 className="cards"
#             ),
#             ),
#             dbc.Col(
#                 [
#                     dbc.Card(
#                         dbc.CardBody(
#                             [
#                                 dbc.CardHeader("Top Aplicaciones Gratuitas"),
#                                 dcc.Graph(id='figureFree', figure={})
#                             ]
#                         ),
#                         className="cards"
#
#                     ),
#                     dbc.Card(
#                         dbc.CardBody(
#                             [
#                                 dbc.CardHeader("Top Aplicaciones de Pago"),
#                                 dcc.Graph(id='figurePaid', figure={})
#                             ]
#                         ),
#                         className="cards"
#
#                     ),
#                     dbc.Card(
#                         dbc.CardBody(
#                             [
#                                 dbc.CardHeader("Top Ingresos"),
#                                 dcc.Graph(id='figureGrossing', figure={})
#                             ]
#                         ),
#                         className="cards"
#
#                     )],
#
#             ),
#         ], className='maps', style={'textAlign': 'center'},
#     ),
#
# ])
#
#
# # ------------------------------------------------------------------------------
# # Conectamos los graficos Plotly con los componentes Dash
# @callback(
#
#     [Output(component_id='figureFree', component_property='figure'),
#      Output(component_id='figurePaid', component_property='figure'),
#      Output(component_id='figureGrossing', component_property='figure'),
#      Output(component_id='loading-output-maps', component_property='children'),
#      Output(component_id='slct_year', component_property='min_date_allowed'),
#      Output(component_id='slct_year', component_property='max_date_allowed'),
#      Output(component_id='slct_year', component_property='date'),
#      Output(component_id='slct_app_drop', component_property='options')
#
#      ],
#     [Input(component_id='slct_year', component_property='date'),
#      Input(component_id='slct_app_drop', component_property='value')]
# )
# def update_graph(date_selected, app_selected):
#     if date_selected is not None:
#
#         date_selected = datetime.strptime(date_selected, '%Y-%m-%d')
#         date_selected = date_selected.date()
#
#
#     else:
#         date_selected = last_date
#
#     dffFree = top_free_apps.copy()
#
#     dffFree = dffFree[dffFree.created == date_selected]
#
#     if app_selected is None:
#         dffFree = dffFree[dffFree.position == 1]
#     else:
#         dffFree = dffFree[dffFree.appId == app_selected]
#
#     figFree = go.Figure(data=go.Choropleth(
#         locations=dffFree['country'],
#         z=dffFree['position'].astype(int),
#         text=dffFree['title'],
#         zmin=0,
#         zmax=50,
#         colorscale='Blues',
#         autocolorscale=False,
#         reversescale=True,
#         marker_opacity=0.5,
#         marker_line_width=0,
#         colorbar_title='Puesto',
#     ))
#
#     figFree.update_layout(
#         margin={"r": 0, "t": 40, "l": 0, "b": 0},
#         geo=dict(
#             showframe=False,
#             showcoastlines=False,
#             projection_type='equirectangular'
#         ),
#         annotations=[dict(
#             x=0.55,
#             y=0.1,
#             xref='paper',
#             yref='paper',
#             text='Tabla: TOP_FREE',
#             showarrow=False
#         )]
#     )
#
#     dffPaid = top_paid_apps.copy()
#
#     dffPaid = dffPaid[dffPaid.created == date_selected]
#
#     if app_selected is None:
#         dffPaid = dffPaid[dffPaid.position == 1]
#     else:
#         dffPaid = dffPaid[dffPaid.appId == app_selected]
#
#     figPaid = go.Figure(data=go.Choropleth(
#         locations=dffPaid['country'],
#         z=dffPaid['position'].astype(int),
#         text=dffPaid['title'],
#         zmin=0,
#         zmax=50,
#         colorscale='Reds',
#         autocolorscale=False,
#         reversescale=True,
#         marker_opacity=0.5,
#         marker_line_width=0,
#         colorbar_title='Puesto',
#     ))
#
#     figPaid.update_layout(
#         margin={"r": 0, "t": 40, "l": 0, "b": 0},
#         geo=dict(
#             showframe=False,
#             showcoastlines=False,
#             projection_type='equirectangular'
#         ),
#         annotations=[dict(
#             x=0.55,
#             y=0.1,
#             xref='paper',
#             yref='paper',
#             text='Tabla: TOP_PAID',
#             showarrow=False
#         )]
#     )
#
#     dffPaid = top_grossing_apps.copy()
#
#     dffPaid = dffPaid[dffPaid.created == date_selected]
#
#     if app_selected is None:
#         dffPaid = dffPaid[dffPaid.position == 1]
#     else:
#         dffPaid = dffPaid[dffPaid.appId == app_selected]
#
#     figGrossing = go.Figure(data=go.Choropleth(
#         locations=dffPaid['country'],
#         z=dffPaid['position'].astype(int),
#         text=dffPaid['title'],
#         zmin=0,
#         zmax=50,
#         colorscale='Greens',
#         autocolorscale=False,
#         reversescale=True,
#         marker_opacity=0.5,
#         marker_line_width=0,
#         colorbar_title='Puesto',
#     ))
#
#     figGrossing.update_layout(
#         margin={"r": 0, "t": 40, "l": 0, "b": 0},
#         geo=dict(
#             showframe=False,
#             showcoastlines=False,
#             projection_type='equirectangular'
#         ),
#         annotations=[dict(
#             x=0.55,
#             y=0.1,
#             xref='paper',
#             yref='paper',
#             text='Tabla: GROSSING',
#             showarrow=False
#         )]
#     )
#
#     date = date_selected
#
#     optionsApps = [{"label": str(i['title']), "value": i['appId']} for i in titles_apps]
#
#     loading = ''
#
#     return figFree, figPaid, figGrossing, loading, init_date, last_date, date, optionsApps
