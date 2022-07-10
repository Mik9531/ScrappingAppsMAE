# coding=utf8
import glob
import shutil
import time
from multiprocessing import freeze_support
from urllib.parse import quote_plus
import zipfile

import os
import pymysql
from pathlib import Path

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

import sys
import requests
from bs4 import BeautifulSoup
from colored import fg, bg, attr
import re
import progressbar
import itertools

from fake_useragent import UserAgent

import country_converter as coco

cc = coco.CountryConverter()

base_url = 'http://apkleecher.com/'
version_url = 'https://apksfull.com/version/'
search_url = 'http://apkleecher.com/?ids='
dl_url = 'http://apkleecher.com/download/dl.php?dl='
g_play_url = 'https://play.google.com/store/apps/details?id='

headers = {
    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'}
ua = UserAgent()
hdr = {'User-Agent': ua.random,
       'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
       'Accept-Charset': 'ISO-8859-1,utf-8;q=0.7,*;q=0.3',
       'Accept-Encoding': 'none',
       'Accept-Language': 'en-US,en;q=0.8',
       'Connection': 'keep-alive'}


def time_passed(start, duration):
    """tests if an amount of time has passed
    Args:
        start(float): timestamp of time()
        duration(int): seconds that need to pass
    Returns:
        bool: are 'duration' seconds over since 'start'
    """
    return start + duration <= time.time()


def show_internet_error():
    print(fg('red') + '\n[!] ERROR: ' + attr('reset') +
          'Check your internet connection and try again.\n')
    exit()


def show_arg_error():
    print(fg('red') + '\n[!] ERROR: ' + attr('reset') +
          'Invalid Format\nShould be of the format `python main.py {{PACKAGE_ID}}`')
    exit()


def show_invalid_id_err():
    print('%s PackageId is invalid %s' %
          (fg('red'), attr('reset')))
    exit()


def download_apk(actual_apk):
    notLink = True

    # take the package_id from the user
    package_id = actual_apk

    # verify g_play_url with packageId string
    g_play_res = requests.get(g_play_url + package_id,
                              headers=headers, allow_redirects=True)
    if g_play_res.status_code != 200:
        notLink = False

    # search the web page using the package id
    search_res = requests.get(
        "https://apk.support/download-app-es/" + package_id,
        headers=headers, allow_redirects=True)

    # check the statuscode and verify it
    if search_res.status_code != 200:
        notLink = False

    if notLink is True:
        # there will be a list of apps that show on the website
        soup = BeautifulSoup(search_res.content, 'html.parser')

        tbody_children = soup.findAll('a')

        sub_dl_links = []

        # tbody_children
        # loop through the children and get the href
        for item in tbody_children:
            # get href of the child
            link = item.get('href')
            # if link contains "downwload"
            if link is not None:
                if link.find("playstoreapi.com") != -1:
                    # append the link to the list
                    sub_dl_links.append(link)

        if True is not None:
            # download the apk
            print('Downloading ' + package_id)

            # TODO: replace app_name with actual app name
            output_file = "output2/" + package_id + ".apk"

            r = requests.get(sub_dl_links[0], allow_redirects=True,
                             stream=True)

            with open(output_file, 'wb') as f:
                dl = 0
                start = time.time()

                for chunk in r.iter_content(chunk_size=1024):

                    if time_passed(start, 50):
                        output_file = None
                        break
                    if chunk:
                        dl += len(chunk)
                        f.write(chunk)
            print('%sAPK Downloaded %s' %
                  (fg('green'), attr('reset')))

            print('%sAPK DOWNLOADED : App saved to output/ %s' %
                  (fg('green'), attr('reset')))

        else:
            output_file = None
    else:
        output_file = None

    return output_file


if __name__ == '__main__':
    start_time = time.time()

    # Creamos la conexion a la base de datos

    connection = pymysql.connect(host='testpy.cxfxcsoe1mdg.us-east-2.rds.amazonaws.com',
                                 user='root',
                                 password='kalandria',
                                 db='appsData',
                                 charset='utf8mb4',
                                 cursorclass=pymysql.cursors.DictCursor)
    cursor = connection.cursor()

    sql = "SELECT appId,programmingLanguage FROM `APPS` WHERE genreId not LIKE ('%GAME%') AND programmingLanguage is NULL"

    cursor.execute(sql)

    list_already_apps = cursor.fetchall()

    cont_position = 0
    cont_actual = 0

    current_scraping_apps = []
    total_apps = []

    app_details = {}

    for actual_app in list_already_apps:

        cont_actual += 1
        cont_position += 1

        print(str(cont_position) + "/" + str(len(list_already_apps)))

        if actual_app['programmingLanguage'] is None:

            try:
                id_download = download_apk(actual_app['appId'])
            except Exception:
                id_download = None
                var = None
            # id_download = None
            if id_download is not None:

                try:
                    if os.path.exists(id_download):

                        # Obtenemos el lenguaje de programacion usado
                        apk = APK(id_download)
                        files_apk = APK.get_files(apk)

                        if (files_apk[0] == (actual_app['appId'] + ".apk")):
                            remove_files = files_apk
                            remove_files.pop(0)
                            print("extrayendo apk")
                            p = Path(id_download)
                            p.rename(p.with_suffix('.zip'))
                            shutil.unpack_archive("output2/" + actual_app['appId'] + '.zip',
                                                  extract_dir="output2")
                            apk = APK(id_download)
                            files_apk = APK.get_files(apk)
                            os.remove("output2/" + actual_app['appId'] + '.zip')

                            for actual_file in remove_files:
                                os.remove("output2/" + actual_file)

                        if "appinventor" in actual_app:
                            app_details['programmingLanguage'] = 'appInventor'
                        elif (any("flutter" in string for string in files_apk)):
                            app_details['programmingLanguage'] = 'Flutter'
                        elif any("kotlin" in string for string in files_apk):
                            app_details['programmingLanguage'] = 'Kotlin'
                        else:
                            app_details['programmingLanguage'] = 'Java'

                        if (len(files_apk) == 0):
                            app_details['programmingLanguage'] = ''

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
                        actual_app['appId']
                    )

                    total_apps.append(apps)

                except Exception as e:
                    print(e)
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
