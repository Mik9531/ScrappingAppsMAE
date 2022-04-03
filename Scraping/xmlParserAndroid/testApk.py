from pyaxmlparser import APK
import pymysql

apk = APK('cityTest.apk')
print(apk.package)
print(apk.version_name)
print(apk.version_code)
print(apk.icon_info)
print(apk.icon_data)
print(apk.application)

connection = pymysql.connect(host='localhost',
                             user='root',
                             password='kalandria',
                             db='testpy',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
cursor = connection.cursor()
sql = "INSERT INTO testTable(title) VALUES (%s)"
val = (apk.packagename)
cursor.execute(sql,val)

connection.close()
