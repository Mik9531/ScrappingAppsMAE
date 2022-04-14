import time

import scraper


def obtainList(collection):
    resultList = scraper.list(collection, None, None, 500, 'es', 'US', True)
    return resultList


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

print("--- %s segundos ---" % (time.time() - start_time))
