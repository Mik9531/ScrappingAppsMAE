# # coding=utf8
# import dash
# import dash_bootstrap_components as dbc
# import dash_daq as daq
# import plotly.express as px
# import plotly.graph_objects as go
# from dash import dcc, html, Input, Output, callback
# import dash_pivottable
#
# from querys import titles_apps, allTechs, allReviews, dataGraphs
#
# # ------------------------------------------------------------------------------
# # Graphics layout
#
# dash.register_page(__name__, path='/graphics')
#
# layout = html.Div([
#
#     dbc.Row(
#         [
#
#             dbc.Col(
#                 [
#                     dbc.Row(
#                         [
#                             dbc.Col(
#                                 dbc.Card(
#                                     dbc.CardBody(
#                                         [
#                                             daq.LEDDisplay(
#                                                 id='led1',
#                                                 label="Aplicaciones analizadas",
#                                                 color="#FF5E5E",
#                                                 value=len(titles_apps)
#                                             )],
#
#                                     ),
#                                     className="cards"
#
#                                 ),
#                             ),
#                             dbc.Col(
#                                 dbc.Card(
#                                     dbc.CardBody(
#                                         [
#                                             daq.LEDDisplay(
#                                                 id='led2',
#                                                 label="Reseñas listadas",
#                                                 color="#FF5E5E",
#                                                 value=len(allReviews)
#                                             )],
#
#                                     ),
#                                     className="cards"
#
#                                 ),
#                             ),
#                             dbc.Col(
#                                 dbc.Card(
#                                     dbc.CardBody(
#                                         [
#                                             daq.LEDDisplay(
#                                                 id='led3',
#                                                 label="Tecnologías obtenidas",
#                                                 color="#FF5E5E",
#                                                 value=len(allTechs)
#                                             )],
#
#                                     ),
#                                     className="cards"
#
#                                 ),
#                             )], className='justifyRelative'
#                     ),
#                     dbc.Card(
#                         dbc.CardBody(
#                             [
#                                 dbc.CardHeader("Selecciona propiedades"),
#                                 html.Div([
#                                     dash_pivottable.PivotTable(
#                                         id='table',
#                                         data=dataGraphs,
#                                         colOrder="key_a_to_z",
#                                         rows=['Lenguaje de programación'],
#                                         rowOrder="key_a_to_z",
#                                         rendererName="Multiple Pie Chart",
#                                         aggregatorName="Count",
#                                         cols=['Instalaciones máximas']
#                                     ),
#                                 ], className='justifyRelative', style={'overflowX': 'auto'}
#
#                                 ),
#                                 dcc.Loading(
#                                     id="loading-3",
#                                     type="default",
#                                     children=html.Div(id="loading-output-graphics"),
#                                     fullscreen=True
#
#                                 ),
#                             ], className='justifyRelative'
#
#                         ),
#                         className="cards"
#
#                     ),
#
#                     # dbc.Card(
#                     #     dbc.CardBody(
#                     #         [
#                     #             dbc.CardHeader("Gráfico Aplicaciones"),
#                     #             dcc.Graph(id='figurePie', figure={})
#                     #         ]
#                     #     ),
#                     #     className="cards"
#                     #
#                     # ),
#
#                 ],
#
#             ),
#         ], className='justifyRelative'
#     ),
#
# ])
#
# # ------------------------------------------------------------------------------
# # Conectamos los graficos Plotly con los componentes Dash
# # @callback(
# #
# #     [Output(component_id='figurePie', component_property='figure'),
# #      Output('loading-output-graphics', 'children'),
# #      Output('led1', 'value'), Output('led2', 'value'), Output('led3', 'value')],
# #
# #     [Input(component_id='led1', component_property='value')],
# #
# # )
# # def update_graph():
# #     global loading, contApps, contReviews
# #
# #     contApps = len(titles_apps)
# #
# #     contReviews = len(allReviews)
# #
# #     contTechs = len(allTechs)
# #
# #     # dffPie = titles_apps.copy()
# #     # #
# #     # dffPie = [i for i in dffPie if i['programmingLanguage'] is not None and i['programmingLanguage'] != '']
# #     # #
# #     # for app in dffPie:
# #     #
# #     #     if app['genreId'] is not None:
# #     #         if 'GAME' in app['genreId']:
# #     #             app['genre'] = 'Juego'
# #     #
# #     # figPie = px.pie(dffPie, names=fieldDropdown
# #     #                 )
# #     #
# #     # figPie.update_traces(textposition='inside', textinfo='label+value+percent',
# #     #                      hovertemplate="Valor:%{label} <br>Num: %{value} </br>Porcentaje: %{percent}"
# #     #                      )
# #     # figPie.update_layout(height=600,
# #     #                      margin=dict(
# #     #                          l=40,
# #     #                          r=120,
# #     #                          b=50,
# #     #                          t=50,
# #     #                      ),
# #     #                      xaxis=dict(domain=[0, 0.1]))
# #     #
# #     # figPie = go.Figure(figPie)
# #
# #     loading = ''
# #     return loading, contApps, contReviews, contTechs
