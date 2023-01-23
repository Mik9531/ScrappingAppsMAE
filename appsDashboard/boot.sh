#!/bin/bash

cd /home/dashboard
exec gunicorn -b 0.0.0.0:8080 --workers 1 --threads 1 --timeout 0 wsgi:app