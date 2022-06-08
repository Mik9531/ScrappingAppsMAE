# separator used by search.py, categories.py, ...
SEPARATOR = ";"

LANG = "es_ES"  # can be en_US, fr_FR, ...
ANDROID_ID = "3D7471ADB87709B2"  # "xxxxxxxxxxxxxxxx"
GOOGLE_LOGIN = "miguelafannn@gmail.com"  # "username@gmail.com"
GOOGLE_PASSWORD = "Windowsxp.9531"
AUTH_TOKEN = None  # "yyyyyyyyy"

# force the user to edit this file
if any([each == None for each in [ANDROID_ID, GOOGLE_LOGIN, GOOGLE_PASSWORD]]):
    raise Exception("config.py not updated")
