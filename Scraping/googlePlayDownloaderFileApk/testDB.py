import pymysql
connection = pymysql.connect(host='localhost',
                                user='root',
                                password='kalandria',
                                db='testpy',
                                charset='utf8mb4',
                                cursorclass=pymysql.cursors.DictCursor)
cursor = connection.cursor()
sql = "INSERT INTO testTable(title) VALUES ('123')"
cursor.execute(sql)
result = cursor.fetchone()

print (result)
connection.close()