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


# google-play-scraper-py

@profile
def obtainList():
    resultList = scraper.list('TOP_FREE', None, None, 500, 'es', 'US', True)
    return resultList


testApp = scraper.app(appId='com.google.android.apps.translate')
print_json(testApp)



# Listado
# resultList = obtainList()
# print_json(resultList[0])

#Búsqueda de un termino
# testSearchApps = scraper.search('uca', 50, 'es', 'es', True)
# print_json(testSearchApps[0])



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
