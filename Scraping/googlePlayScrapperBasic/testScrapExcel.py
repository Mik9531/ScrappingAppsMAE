from google_play_scraper import app
import pandas as pd

result = app(
    'appinventor.ai_ruizrube.Fraseologia',
    lang='es',  # defaults to 'en'
    country='es'  # defaults to 'us'
)

result2 = app(
    'com.google.android.apps.translate',
    lang='es',  # defaults to 'en'
    country='es'  # defaults to 'us'
)

data = {'Title': [result.get('title'), result2.get('title')],
        'Installs': [result.get('installs'), result2.get('installs')]
        }

df = pd.DataFrame(data, columns=['Title', 'Installs'])

print(df)

df.to_excel(
    r'C:/Users/migue/Desktop/TFG/ScrappingAppsMAE/Recursos/google-play-scraper-JM/google-play-scraper-master\export_dataframe.xlsx',
    index=False, header=True)
