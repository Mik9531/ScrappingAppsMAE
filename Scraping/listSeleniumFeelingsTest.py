import pandas as pd
from google_play_scraper import Sort, reviews_all
import string
import re
import nltk
from nltk import word_tokenize, sent_tokenize
from nltk.corpus import stopwords
from nltk.stem import PorterStemmer
# from wordcloud import WordCloud, STOPWORDS
from textblob import TextBlob
import json
from deep_translator import GoogleTranslator
from nltk.tokenize.treebank import TreebankWordDetokenizer
import time
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.by import By

s = Service(ChromeDriverManager().install())

# Ocultamos la ventana que genera chrome con estas opciones
options = webdriver.ChromeOptions()
options.add_argument('headless')
options.add_argument('window-size=1920x1080')
options.add_argument("disable-gpu")

driver = webdriver.Chrome(service=s, options=options)

# driver.maximize_window()
driver.get(
    'https://play.google.com/store/apps/collection/cluster?clp=0g4jCiEKG3RvcHNlbGxpbmdfZnJlZV9BUFBMSUNBVElPThAHGAM%3D:S:ANO1ljKs-KA&gsr=CibSDiMKIQobdG9wc2VsbGluZ19mcmVlX0FQUExJQ0FUSU9OEAcYAw%3D%3D:S:ANO1ljL40zU&hl=es&gl=US')
time.sleep(10)

# Bloque para realizar un scroll y obtener todas las aplicaciones de la query
SCROLL_PAUSE_TIME = 5

# Obtenemos la altura del scroll
last_height = driver.execute_script("return document.body.scrollHeight")
time.sleep(SCROLL_PAUSE_TIME)

while True:
    # Bajamos al final de la página
    driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")

    # Esperamos para que cargue la página
    time.sleep(SCROLL_PAUSE_TIME)

    # Calculamos la nueva altura del scroll y comparamos con la altura obtenida anteriormente
    new_height = driver.execute_script("return document.body.scrollHeight")
    if new_height == last_height:
        break
    last_height = new_height

linkApps = []
elems = driver.find_elements(by=By.XPATH, value="//a[@href]")
for elem in elems:
    if "details?id" in elem.get_attribute("href"):
        linkApps.append((elem.get_attribute("href")))
linkApps = list(dict.fromkeys(linkApps))

print(linkApps)

linkApps = []
elems = driver.find_elements(by=By.XPATH, value="//a[@href]")
for elem in elems:
    if "details?id" in elem.get_attribute("href"):
        linkApps.append((elem.get_attribute("href")))
linkApps = list(dict.fromkeys(linkApps))

list_all_elements = []
for iteration in linkApps:
    try:
        driver.get(iteration)
        print(iteration)
        time.sleep(3)

        header1 = driver.find_element(by=By.TAG_NAME, value="h1")
        star = driver.find_element(by=By.CLASS_NAME, value="BHMmbe")
        titles = driver.find_elements(by=By.CLASS_NAME, value="BgcNfc")
        comments = driver.find_element(by=By.CLASS_NAME, value="EymY4b")
        list_elements = [iteration, header1.text, float(star.text.replace(",", ".")), comments.text.split()[0]]
        list_all_elements.append(list_elements)
    except Exception as e:
        print(e)

df = pd.DataFrame(list_all_elements, columns=['URL', 'Name', 'Stars', 'Comments'])
print(df)
df.to_excel('scraping_playstore.xlsx', header=True, index=False)
