#!/bin/bash
# called by Dockerfile

# go to directory where wsgi.py is
cd /home/dashboard
# start gunicorn
exec gunicorn -b 0.0.0.0:5000 --workers 1 --threads 8 --timeout 0 index.app:app