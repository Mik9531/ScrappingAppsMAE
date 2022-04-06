#!/usr/bin/env python3

import glob
import subprocess
import sys
from random import randint
from time import sleep

apk_downloads_path = "Downloads/"
apk_list_to_download = "exampleAPKlist.txt"  # as created by the crawl_ py files

# Check existing apks
existing_apk_list = []
for file in glob.glob(apk_downloads_path + "*.apk"):
    # create a list with only the package names from the filenames
    existing_apk_list.append(file.split('-')[-1][:-4].replace(" ", ""))
print("Already existing " + str(len(existing_apk_list)))

# Create a list with the package names to be downloaded.
apk_list_file = open(apk_list_to_download, 'r')
apk_lines = apk_list_file.readlines()
apk_list = []
for line in apk_lines:
    apk_list.append(line.split('|')[0])
apk_list = list(set(apk_list))

# The list to be used for downloading:
final_list = [x for x in apk_list if x not in existing_apk_list]
print("In Total " + str(len(apk_list)) + " apks.\nTo be downloaded: " + str(len(final_list)))
for apkfile in final_list:
    try:
        print("Downloading " + str(apkfile))
        ret = subprocess.check_output(['python3', 'download.py', apkfile], stderr=subprocess.STDOUT)
        if 'Server busy, please try again later' in str(ret):
            print("sleeping for long now....")
            sleep(200)
        sleep(randint(1, 10))
    except KeyboardInterrupt:
        sys.exit("existing")
    except:
        print("Something went wrong with the APK: " + str(apkfile))
        sleep(60)
