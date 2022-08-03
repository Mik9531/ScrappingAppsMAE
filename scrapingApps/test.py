from urllib.request import urlopen
from bs4 import BeautifulSoup as bs
import json

url = "https://play.google.com/store/apps?gl=US&hl=us"
page = urlopen(url).read()
soup = bs(page, 'html.parser')

for item in soup.find_all('script'):
    if 'productDetail' in item.text:
        data = item.text.split('var productDetail =')[-1].split('};')[0] + "}"
        datajson = json.loads(data.strip())
        print('Product Code :' + datajson['ProductCode'])
        for item in datajson['ProductSpecification']:
            print(item['SpecificationName'] + " : " + item['SpecificationValue'])
