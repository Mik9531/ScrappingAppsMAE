# coding=utf8
import glob
import shutil
import time
from multiprocessing import freeze_support
from urllib.parse import quote_plus

import os
import pymysql
import requests
import scraper
from bs4 import BeautifulSoup
from flask import Flask, render_template
# from pyaxmlparser import APK
from androguard.core.bytecodes.apk import APK
from androguard.core.bytecodes.dvm import DalvikVMFormat
from androguard.core.analysis.analysis import Analysis
from androguard.decompiler.dad.decompile import DvMethod
from google_play_scraper import app
from google_play_scraper import app
from selenium import webdriver
from selenium.webdriver.common.by import By
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.service import Service
from os import walk
from os import walk
# from undetected_chromedriver import Chrome


# from selenium import webdriver
# import apkdownloader
# from googleplay import GooglePlayAPI


from google_play_scraper.scraper import PlayStoreScraper


# s = Service(ChromeDriverManager().install())
#
# # Ocultamos la ventana que genera chrome con estas opciones
# options = webdriver.ChromeOptions()
# options.add_argument("--start-maximized")
# options.add_argument('--no-sandbox')
# options.add_argument('--disable-dev-shm-usage')
# # options.add_argument('--headless')
# options.add_argument('--window-size=1920x1080')


# application = Flask(__name__)


# options.add_argument("disable-gpu")

# s = Service(ChromeDriverManager().install())
#
# # Ocultamos la ventana que genera chrome con estas opciones
# options = webdriver.ChromeOptions()
# options.add_argument("--start-maximized")
# # options.add_argument('--headless')
# options.add_argument('--window-size=1920x1080')
# #
# driver = uc.Chrome(options=options, user_data_dir='C:/Users/migue/AppData/Local/Google/Chrome/User_Data/Default')


def getListOfFiles(dirName):
    # create a list of file and sub directories
    # names in the given directory
    listOfFile = os.listdir(dirName)
    allFiles = list()
    # Iterate over all the entries
    for entry in listOfFile:
        # Create full path
        fullPath = os.path.join(dirName, entry)
        # If entry is a directory then get the list of files in this directory
        if os.path.isdir(fullPath):
            allFiles = allFiles + getListOfFiles(fullPath)
        else:
            allFiles.append(fullPath)

    return allFiles


def search(query):
    res = requests.get('https://apkpure.com/search?q={}&region='.format(quote_plus(query)), headers={
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.5 (KHTML, like Gecko) '
                      'Version/9.1.2 Safari/601.7.5 '
    }).text
    soup = BeautifulSoup(res, "html.parser")
    search_result = soup.find('div', {'id': 'search-res'}).find('dl', {'class': 'search-dl'})
    app_tag = search_result.find('p', {'class': 'search-title'}).find('a')
    download_link = 'https://m.apkpure.com' + app_tag['href']
    return download_link


def download(link, actual_apk):
    try:
        res = browser.get(link + '/download?from=details&cf=1')
        time.sleep(20)

        list_of_files = glob.glob('C:/Users/migue/Downloads/*')  # * means all if need specific format then *.csv
        latest_file = max(list_of_files, key=os.path.getctime)
        print(latest_file)

        # soup = BeautifulSoup(res, "html.parser").find('a', {'id': 'download_link'})
        # if soup['href']:
        #     r = requests.get(soup['href'], stream=True, headers={
        #         'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.5 (KHTML, like Gecko) '
        #                       'Version/9.1.2 Safari/601.7.5 '
        #     })
        #     with open(link.split('/')[-1] + '.apk', 'wb') as file:
        #         for chunk in r.iter_content(chunk_size=1024):
        #             if chunk:
        #                 file.write(chunk)
        if ("apkpure" in latest_file and "apk" in latest_file):
            return latest_file
        else:
            return None
    except Exception:
        var = None


def download_apk(app_id):
    download_link = search(app_id)

    if download_link is not None:
        print('Downloading {}.apk ...'.format(download_link))
        id_download = download(download_link, app_id)
        print('Download completed!')
        return id_download
    else:
        print('No results')


def obtain_list(collection, country):
    result = []
    cont_iter = 0

    while bool(result) is False and cont_iter < 10:
        result = scraper.list()
        cont_iter += 1

    return result


if __name__ == '__main__':

    from selenium import webdriver
    from webdriver_manager.firefox import GeckoDriverManager
    from selenium.webdriver.firefox.service import Service
    from selenium.webdriver.firefox.options import Options

    options = Options()
    binary = '/usr/bin/firefox'
    options = webdriver.FirefoxOptions()
    options.binary = binary
    options.add_argument('start-maximized')
    options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    ser = Service(GeckoDriverManager().install())
    browser = webdriver.Firefox(service=ser)
    browser.get('https:apkpure.com/')

    start_time = time.time()

    # Creamos la conexion a la base de datos

    connection = pymysql.connect(host='localhost',
                                 user='root',
                                 password='kalandria',
                                 db='testPy2',
                                 charset='utf8mb4',
                                 cursorclass=pymysql.cursors.DictCursor)
    cursor = connection.cursor()

    sql = "SELECT appId FROM `APPS` WHERE genreId not LIKE ('%GAME%') AND free = 1 ORDER BY programmingLanguage DESC"

    cursor.execute(sql)

    list_already_apps = [item['appId'] for item in cursor.fetchall()]

    cont_position = 0
    cont_actual = 0

    current_scraping_apps = []
    total_apps = []

    app_details = {}

    for actual_app in list_already_apps:

        # AÃ±adimos a datos de la coleccion actual

        print(str(cont_position) + "/" + str(len(list_already_apps)))

        cont_position += 1
        cont_actual += 1

        # Obtenemos los detalles adicionales de la aplicacion si no se encuentra ya en nuestro listado

        if actual_app not in current_scraping_apps:

            # apk = GooglePlayAPI.download(actual_app)

            current_scraping_apps.append(actual_app)

            app_details['programmingLanguage'] = ""

            app_details['libraries'] = ""

            sql = "SELECT programmingLanguage,libraries FROM APPS WHERE appId = %s"

            val = actual_app

            cursor.execute(sql, val)

            language_exists = cursor.fetchone()

            if language_exists['programmingLanguage'] is None:

                # apk = apkdownloader.apkdownloader('miguelafannn@gmail.com', 'Windowsxp.9531', 'es_ES', 'UTC')
                try:
                    id_download = download_apk(actual_app)
                except Exception:
                    id_download = None
                    var = None
                # id_download = None
                if id_download is not None:

                    try:
                        if os.path.exists(id_download):

                            # Descompilamos
                            # apk_found = False
                            # apktool = "apktool.jar"
                            #
                            # for root, subdirs, files in os.walk("."):
                            #     if apk_found is True:
                            #         break
                            #     for file in files:
                            #         if file.endswith(id_download):
                            #             os.system("java -jar " + apktool + " d " + root + "/" + file)
                            #             apk_found = True
                            #             break

                            files_apk = []
                            # for (dirpath, dirnames, filenames) in walk(id_download.rsplit('.', 1)[0]):
                            #     for dirname in dirnames:
                            #         if dirname.startswith('smali') is True:
                            #             files_apk += (getListOfFiles(
                            #                 id_download.rsplit('.', 1)[0] + "/" + dirname))

                            # Obtenemos el lenguaje de programacion usado
                            apk = APK(id_download)
                            files_apk = APK.get_files(apk)

                            if "appinventor" in actual_app:
                                app_details['programmingLanguage'] = 'appInventor'
                            elif (any("flutter" in string for string in files_apk)):
                                app_details['programmingLanguage'] = 'Flutter'
                            elif any("kotlin" in string for string in files_apk):
                                app_details['programmingLanguage'] = 'Kotlin'
                            else:
                                app_details['programmingLanguage'] = 'Java'

                            if (len(files_apk) == 0):
                                app_details['programmingLanguage'] = None

                            # Obtenemos las librerías externas usadas
                            libraries = []
                            if (any("okhttp3" in string for string in files_apk)):
                                libraries.append('okhttp3')

                            if (any("picasso" in string for string in files_apk)):
                                libraries.append('picasso')

                            if (any("jackson" in string for string in files_apk)):
                                libraries.append('jackson')

                            if (any("okio" in string for string in files_apk)):
                                libraries.append('okio')

                            if (any("webrtc" in string for string in files_apk)):
                                libraries.append('webrtc')

                            if (any("exoplayer" in string for string in files_apk)):
                                libraries.append('exoplayer')

                            if (any("firebase" in string for string in files_apk)):
                                libraries.append('firebase')

                            if (any("dagger" in string for string in files_apk)):
                                libraries.append('dagger')

                            if (any("chromium" in string for string in files_apk)):
                                libraries.append('chromium')

                            if (any("spongycastle" in string for string in files_apk)):
                                libraries.append('spongycastle')

                            if (any("facebook" in string for string in files_apk)):
                                libraries.append('facebook')

                            if (any("bolts" in string for string in files_apk)):
                                libraries.append('bolts')

                            if (any("appsflyer" in string for string in files_apk)):
                                libraries.append('appsflyer')

                            if (any("Gson" in string for string in files_apk)):
                                libraries.append('Gson')

                            if (any("jsoup" in string for string in files_apk)):
                                libraries.append('jsoup')

                            if (any("retrofit" in string for string in files_apk)):
                                libraries.append('retrofit')

                            if (any("glide" in string for string in files_apk)):
                                libraries.append('glide')

                            if (any("tensorflow" in string for string in files_apk)):
                                libraries.append('tensorflow')

                            app_details['libraries'] = '|'.join(libraries)

                            # os.remove(id_download.rsplit('.', 1)[0])

                            try:
                                # shutil.rmtree(id_download.rsplit('.', 1)[0])
                                os.remove(id_download)
                                del id_download
                            except Exception:
                                var = None

                        apps = (
                            app_details['programmingLanguage'], app_details['libraries'],
                            actual_app
                        )

                        total_apps.append(apps)

                    except Exception:
                        var = None

        if (cont_actual == 100):
            # Actualizamos las aplicaciones
            sql = "UPDATE APPS SET programmingLanguage=%s, libraries=%s WHERE appId = %s"

            val = total_apps
            cursor.executemany(sql, val)
            connection.commit()
            print(cursor.rowcount, "aplicaciones insertadas.")

            total_apps = []

            cont_actual = 0

    connection.close()

    print("Carga de datos realizada correctamente en %s segundos " % (time.time() - start_time))
