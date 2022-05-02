from urllib.request import Request, urlopen  # Python 3


req = Request('http://dockerflaskpython-env.eba-4mvjtpq7.us-east-2.elasticbeanstalk.com/')
content = urlopen(req).read()

print (content)
