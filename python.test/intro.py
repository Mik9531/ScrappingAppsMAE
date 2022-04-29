import pandas as pd
import plotly.express as px
import plotly.graph_objects as go
from dash import Dash, dcc, html, Input, Output
from sqlalchemy import create_engine
from datetime import date
from datetime import datetime

app = Dash(__name__)

# -- Import and clean data (importing from mysql into pandas)

sqlEngine = create_engine('mysql+pymysql://root:kalandria@testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com/appsData')

dbConnection = sqlEngine.connect()

df = pd.read_sql(
    "SELECT TG.created, A.title, TG.position, TG.country from TOP_GROSSING TG INNER JOIN APPS A ON (A.appId = "
    "TG.appId)", con=dbConnection)

dbConnection.close()

# df = df.groupby(['State', 'ANSI', 'Affected by', 'Year', 'state_code'])[['Pct of Colonies Impacted']].mean()
# df.reset_index(inplace=True)
# print(df[:5])

# ------------------------------------------------------------------------------
# App layout
app.layout = html.Div([

    html.H1("Web Application Dashboards with Dash", style={'text-align': 'center'}),

    # Selector calendario
    dcc.DatePickerRange(
        id='slct_year',
        min_date_allowed=date(2022, 4, 23),
        max_date_allowed=date(2022, 9, 29),
        initial_visible_month=date(2022, 4, 1),
        start_date=date(2022, 4, 27),
        end_date=date(2022, 4, 28)
    ),
    html.Div(id='output_container'),
    # dcc.Dropdown(id="slct_year",
    #              options=[
    #                  {"label": "28", "value": '2022-04-28'},
    #                  {"label": "27", "value": '2022-04-27'}],
    #              multi=False,
    #              value='2022-04-28',
    #              style={'width': "40%"}
    #              ),
    # html.Div(id='output_container', children=[]),

    html.Br(),

    dcc.Graph(id='apps_map', figure={})

])


# ------------------------------------------------------------------------------
# Conectamos los graficos Plotly con los componentes Dash
@app.callback(
    [Output(component_id='output_container', component_property='children'),
     Output(component_id='apps_map', component_property='figure')],
    [Input(component_id='slct_year', component_property='start_date')]
)
def update_graph(option_slctd):
    print(option_slctd)
    print(type(option_slctd))

    container = "El dia seleccionado ha sido: {}".format(option_slctd)

    option_slctd = datetime.strptime(option_slctd, '%Y-%m-%d')
    option_slctd = option_slctd.date()

    print(option_slctd)
    print(type(option_slctd))

    dff = df.copy()
    print(dff.head())
    dff = dff[dff.created == option_slctd]
    print(dff.head())
    dff = dff[dff.position == 1]
    print(dff.head())


    # Plotly Express
    fig = px.choropleth(
        data_frame=dff,
        locations='country',
        hover_name="country",
        hover_data=['position', 'title'],

        color_continuous_scale=px.colors.sequential.YlOrRd,
        template='plotly_dark'
    )

    # Plotly Graph Objects (GO)
    # fig = go.Figure(
    #     data=[go.Choropleth(
    #         locationmode='USA-states',
    #         locations=dff['state_code'],
    #         z=dff["Pct of Colonies Impacted"].astype(float),
    #         colorscale='Reds',
    #     )]
    # )
    #
    # fig.update_layout(
    #     title_text="Bees Affected by Mites in the USA",
    #     title_xanchor="center",
    #     title_font=dict(size=24),
    #     title_x=0.5,
    #     geo=dict(scope='usa'),
    # )

    return container, fig


# ------------------------------------------------------------------------------
if __name__ == '__main__':
    app.run_server(debug=True, host='0.0.0.0', port=8080)
