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

                    if time_passed(start, 20):
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

    total_apps = []

    countries = "AF,AX,AL,DZ,AS,AD,AO,AI,AQ,AG,AR,AM,AW,AU,AT,AZ,BH,BS,BD,BB,BY,BE,BZ,BJ,BM,BT,BO,BQ,BA,BW,BV,BR," \
                "IO,BN,BG,BF,BI,KH,CM,CA,CV,KY,CF,TD,CL,CN,CX,CC,CO,KM,CG,CD,CK,CR,CI,HR,CU,CW,CY,CZ,DK,DJ,DM,DO," \
                "EC,EG,SV,GQ,ER,EE,ET,FK,FO,FJ,FI,FR,GF,PF,TF,GA,GM,GE,DE,GH,GI,GR,GL,GD,GP,GU,GT,GG,GN,GW,GY,HT," \
                "HM,VA,HN,HK,HU,IS,IN,ID,IR,IQ,IE,IM,IL,IT,JM,JP,JE,JO,KZ,KE,KI,KP,KR,KW,KG,LA,LV,LB,LS,LR,LY,LI," \
                "LT,LU,MO,MK,MG,MW,MY,MV,ML,MT,MH,MQ,MR,MU,YT,MX,FM,MD,MC,MN,ME,MS,MA,MZ,MM,NA,NR,NP,NL,NC,NZ,NI," \
                "NE,NG,NU,NF,MP,NO,OM,PK,PW,PS,PA,PG,PY,PE,PH,PN,PL,PT,PR,QA,RE,RO,RU,RW,BL,SH,KN,LC,MF,PM,VC,WS," \
                "SM,ST,SA,SN,RS,SC,SL,SG,SX,SK,SI,SB,SO,ZA,GS,SS,ES,LK,SD,SR,SJ,SZ,SE,CH,SY,TW,TJ,TZ,TH,TL,TG,TK," \
                "TO,TT,TN,TR,TM,TC,TV,UG,UA,AE,GB,US,UM,UY,UZ,VU,VE,VN,VG,VI,WF,EH,YE,ZM,ZW "

    countries = countries.split(',')

    for country in countries:
        print(country)
        iso2_code = country
        countryCode = coco.convert(names=iso2_code, to='ISO3')

        apps = (
            countryCode, country
        )

        total_apps.append(apps)

        sql = "UPDATE GROSSING SET country=%s WHERE country = %s"

        val = total_apps
        cursor.executemany(sql, val)
        connection.commit()
        print(cursor.rowcount, "aplicaciones modificadas.")

connection.close()

print("Carga de datos realizada correctamente en %s segundos " % (time.time() - start_time))
