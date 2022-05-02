#!/bin/sh
# called by Dockerfile

# go to directory where wsgi.py is
cd /home/flask_app/helloworld
# start gunicorn
exec gunicorn -b 0.0.0.0:5000 --workers 1 --threads 8 --timeout 0 application:app