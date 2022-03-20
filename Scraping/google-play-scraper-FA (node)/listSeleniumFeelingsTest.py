# Bloque para análisis de sentimientos
import matplotlib.pyplot as plt
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

dataUca = reviews_all(
  'net.universia.uca',
  sleep_milliseconds=0,  # defaults to 0
  lang='es',  # defaults to 'en'
  country='es',  # defaults to 'us'
  sort=Sort.MOST_RELEVANT,  # defaults to Sort.MOST_RELEVANT
)

# reviewsUca = []
# namesUca = []
# scoresUca = []
# thumbsUpUca = []
# createdUca = []
# reviewCreatedUca = []
#
# allReviewsTotal = dict()

# for currentReview in dataUca:
# currentReview['content'] = (currentReview['content'].encode('latin-1', 'replace').decode('latin-1'))
# namesUca.append(currentReview['userName'])
# scoresUca.append(currentReview['score'])
# thumbsUpUca.append(currentReview['thumbsUpCount'])
# createdUca.append(currentReview['at'])
# reviewCreatedUca.append(currentReview['reviewCreatedVersion'])


# TRADUCCIÓN DE TEXTOS

for currentReview in dataUca:
  currentReview['content'] = (currentReview['content'].encode('latin-1', 'replace').decode('latin-1'))
  traductor = GoogleTranslator(source='auto', target='en')
  currentReview['content'] = traductor.translate(currentReview['content'])

# print(resultado)

df = pd.DataFrame(dataUca)

df = df[["userName", "at", "thumbsUpCount", "content", "reviewCreatedVersion", "score"]]

# UTILIDADES

# Comprobamos que no haya valores que falten
# check_total_none = df.isnull().sum()
# print(check_total_none)

# Conocer cuales son las filas de los usuarios que han dado 5 estrellas
# score_high = df[df["score"] == 5]
# print("score high:", score_high)

# O 3 estrellas
# score_mid = df[df["score"] == 3]
# print("score_mid:", score_mid)


# Conocer el número de versiones únicas de nuestro dataset
# print(df.reviewCreatedVersion.unique())
# print(df.reviewCreatedVersion.nunique())

# Conocer la media de puntuaciones de nuestra aplicación para cada versión sacada
# x=(df.groupby('reviewCreatedVersion')['score'].mean())
# print(x)

# df.to_excel('feelingsScrap.xlsx', header=True, index=False)

# Gráfica que muestra si nuestra aplicación ha tenido más o menos reseñas positivas
# plt.hist(df['score'], bins = 5)
# plt.show()

# prof = ProfileReport(df)
# prof.to_file(output_file='output.html')


# PREPROCESAMIENTO DE DATOS


# Conversión a minúsculas

# Cambiamos a string las reviews
df['content'] = df['content'].astype(str)
# Ej: Antes de convertir a minúsculas
# print(df['content'][2])
# Después de convertir todas a minúsculas
df['content'] = df['content'].apply(lambda x: x.lower())
# print(df['content'][2])

# Stop Words

stop_words = set(stopwords.words('english'))
listSentence = []

for currentSentence in df['content']:
  word_tokens = word_tokenize(currentSentence)

  filtered_sentence = []

  for w in word_tokens:
    if w not in stop_words:
      filtered_sentence.append(w)

  listSentence.append(TreebankWordDetokenizer().detokenize(filtered_sentence))

df['content'] = listSentence

# Chequeamos si hay caracteres especiales
alphabet = string.ascii_letters + string.punctuation
# print(df.content.str.strip(alphabet).astype(bool).any())

extracted_emojis = []


def extract_emojis(s):
  expe = re.compile('[\U00010000-\U0010ffff]', flags=re.UNICODE)
  # return expe.findall(s)
  return expe.sub(r'', s)


for currentSentence in df['content']:
  # print(str(extract_emojis(y)))
  extracted_emojis.append(str(extract_emojis(currentSentence)))
# print(extracted_emojis)


df['content'] = extracted_emojis


# Función para calcular los sentimientos del dataset

def senti_sc(x):
  if x is not None:
    return TextBlob(x).sentiment


from scipy import stats

listlikes = []
listscore = []
listmagnitude = []

for x in dataUca:
  listlikes.append(x["thumbsUpCount"])
  listscore.append(x["score"])

correlation, p_value = stats.pearsonr(listscore, listlikes)

print(correlation)
print(p_value)

df["puntuaciónSentimientos"] = df["content"].apply(senti_sc)
print(df.loc[0:54, ['content', 'puntuaciónSentimientos']])



# df_busu = pd.DataFrame(np.array(reviewsUca),columns=['Reseñas'])
#
#
# df_busu = df_busu.join(pd.DataFrame(df_busu.pop('Reseñas').tolist()))
#
#
df.to_excel('scrapingReviewsFeelings.xlsx', header=True, index=False)

# print(reviewsUca)


# s = Service(ChromeDriverManager().install())
# driver = webdriver.Chrome(service=s)
# driver.maximize_window()
# driver.get('https://play.google.com/store/search?q=uca&c=apps&hl=es&gl=es')
# time.sleep(10)
#
# # Bloque para realizar un scroll y obtener todas las aplicaciones de la query
# SCROLL_PAUSE_TIME = 5
#
# # Obtenemos la altura del scroll
# last_height = driver.execute_script("return document.body.scrollHeight")
# time.sleep(SCROLL_PAUSE_TIME)
#
# while True:
#   # Bajamos al final de la página
#   driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
#
#   # Esperamos para que cargue la página
#   time.sleep(SCROLL_PAUSE_TIME)
#
#   # Calculamos la nueva altura del scroll y comparamos con la altura obtenida anteriormente
#   new_height = driver.execute_script("return document.body.scrollHeight")
#   if new_height == last_height:
#     break
#   last_height = new_height
#
# linkApps = []
# elems = driver.find_elements(by=By.XPATH, value="//a[@href]")
# for elem in elems:
#   if "details?id" in elem.get_attribute("href"):
#     linkApps.append((elem.get_attribute("href")))
# linkApps = list(dict.fromkeys(linkApps))
#
# print(linkApps)
#
# linkApps = []
# elems = driver.find_elements(by=By.XPATH, value="//a[@href]")
# for elem in elems:
#   if "details?id" in elem.get_attribute("href"):
#     linkApps.append((elem.get_attribute("href")))
# linkApps = list(dict.fromkeys(linkApps))
#
# list_all_elements = []
# for iteration in linkApps:
#   try:
#     driver.get(iteration)
#     print(iteration)
#     time.sleep(3)
#
#     header1 = driver.find_element(by=By.TAG_NAME, value="h1")
#     star = driver.find_element(by=By.CLASS_NAME, value="BHMmbe")
#     titles = driver.find_elements(by=By.CLASS_NAME, value="BgcNfc")
#     comments = driver.find_element(by=By.CLASS_NAME, value="EymY4b")
#     list_elements = [iteration, header1.text, float(star.text.replace(",", ".")), comments.text.split()[0]]
#     list_all_elements.append(list_elements)
#   except Exception as e:
#     print(e)
#
# df = pd.DataFrame(list_all_elements, columns=['URL', 'Name', 'Stars', 'Comments'])
# print(df)
# df.to_excel('scraping_playstore.xlsx', header=True, index=False)
