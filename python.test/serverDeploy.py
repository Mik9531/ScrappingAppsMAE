import os
import time

from flask import Flask, render_template

app = Flask(__name__)

import scraper


def obtainList(collection):
    resultList = scraper.list(collection, None, None, 500, 'es', 'US', True)
    return resultList


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/listadoApks/')
def my_link():
    start_time = time.time()

    print('Comienza el scraping')

    collectionsList = []

    collectionsList.append('TOP_FREE')

    for collection in collectionsList:

        resultList = obtainList(collection)

        contPosition = 1

        for app in resultList:
            print(str(contPosition) + ' - ' + app['appId'])
            contPosition += 1

    # print("--- %s segundos ---" % (time.time() - start_time))
    return str(os.environ.get("PORT", 8080))


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=int(os.environ.get("PORT", 8080)))
