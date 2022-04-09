from google_play_scraper import app
import json
import time
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.by import By
from pygments import highlight
from pygments.lexers import JsonLexer
from pygments.formatters import TerminalFormatter
import scraper
from line_profiler_pycharm import profile


# Función que nos imprimirá un json mejor formateado
def print_json(json_object):
    json_str = json.dumps(
        json_object,
        indent=2,
        sort_keys=True,
        default=str
    )
    print(highlight(json_str, JsonLexer(), TerminalFormatter()))


from bs4 import BeautifulSoup
from urllib.parse import quote_plus
import requests


def search(query):
    res = requests.get('https://apkpure.com/search?q={}&region='.format(quote_plus(query)), headers={
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.5 (KHTML, like Gecko) '
                      'Version/9.1.2 Safari/601.7.5 '
    }).text
    soup = BeautifulSoup(res, "html.parser")
    search_result = soup.find('div', {'id': 'search-res'}).find('dl', {'class': 'search-dl'})
    if search_result != None:
        app_tag = search_result.find('p', {'class': 'search-title'}).find('a')
        download_link = 'https://apkpure.com' + app_tag['href']
        return download_link


def download(link):
    res = requests.get(link + '/download?from=details', headers={
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.5 (KHTML, like Gecko) '
                      'Version/9.1.2 Safari/601.7.5 '
    }).text
    soup = BeautifulSoup(res, "html.parser").find('a', {'id': 'download_link'})
    if soup != None:
        if soup['href']:
            r = requests.get(soup['href'], stream=True, headers={
                'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.5 (KHTML, like Gecko) '
                              'Version/9.1.2 Safari/601.7.5 '
            })
            with open(link.split('/')[-1] + '.apk', 'wb') as file:
                for chunk in r.iter_content(chunk_size=1024):
                    if chunk:
                        file.write(chunk)


def download_apk(app_id):
    download_link = search(app_id)

    if download_link is not None:
        print('Downloading {}.apk ...'.format(download_link))
        download(download_link)
        print('Download completed!')
    else:
        print('No results')


# Descarga de APK
download_apk('appinventor.ai_ruizrube.Fraseologia')

from pyaxmlparser import APK

apk = APK('appinventor.ai_ruizrube.Fraseologia.apk')
apk2 = APK('cityTestApkDescomprimida/cityTest.apk')

test = []

#
# # Función que nos imprimirá un json mejor formateado
# def print_json(json_object):
#     json_str = json.dumps(
#         json_object,
#         indent=2,
#         sort_keys=True,
#         default=str
#     )
#     print(highlight(json_str, JsonLexer(), TerminalFormatter()))
#
#
# s = Service(ChromeDriverManager().install())
#
# # Ocultamos la ventana que genera chrome con estas opciones
# options = webdriver.ChromeOptions()
# options.add_argument('headless')
# options.add_argument('window-size=1920x1080')
# # options.add_argument("disable-gpu")
#
# driver = webdriver.Chrome(service=s, options=options)
#
# # driver.maximize_window()
# driver.get(
#     'https://play.google.com/store/apps/collection/cluster?clp=0g4jCiEKG3RvcHNlbGxpbmdfZnJlZV9BUFBMSUNBVElPThAHGAM%3D:S:ANO1ljKs-KA&gsr=CibSDiMKIQobdG9wc2VsbGluZ19mcmVlX0FQUExJQ0FUSU9OEAcYAw%3D%3D:S:ANO1ljL40zU&hl=es&gl=US')
#
# # Bloque para realizar un scroll y obtener todas las aplicaciones de la query
# SCROLL_PAUSE_TIME = 1
#
# # Obtenemos la altura del scroll
# last_height = driver.execute_script("return document.body.scrollHeight")
# time.sleep(SCROLL_PAUSE_TIME)
#
# while True:
#     # Bajamos al final de la página
#     driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
#
#     # Esperamos para que cargue la página
#     time.sleep(SCROLL_PAUSE_TIME)
#
#     # Calculamos la nueva altura del scroll y comparamos con la altura obtenida anteriormente
#     new_height = driver.execute_script("return document.body.scrollHeight")
#     if new_height == last_height:
#         break
#     last_height = new_height
#
# idApps = []
# app_infos = []
#
# elems = driver.find_elements(by=By.XPATH, value="//a[@href]")
#
# for elem in elems:
#     if "details?id" in elem.get_attribute("href"):
#         urlApk = (elem.get_attribute("href").split('id='))[1]
#         idApps.append(urlApk)
#         info = app(urlApk, lang='es', country='es')
#         del info['comments']
#         app_infos.append(info)
# idApps = list(dict.fromkeys(idApps))
#
# print(idApps)
#
# list_all_elements = []
#
#
# print_json(app_infos[0])

# df = pd.DataFrame(list_all_elements, columns=['URL', 'Name', 'Stars', 'Comments'])
# print(df)
# df.to_excel('scraping_playstore.xlsx', header=True, index=False)
