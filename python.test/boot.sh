#!/bin/bash

cd /home/flask_app/listadoApks

exec gunicorn -b 0.0.0.0:5000 --workers 1 --threads 8 --timeout 0 application:application