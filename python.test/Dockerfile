# Dockerfile, Image, Container

FROM python:3



# Copy local code to the container image.
RUN mkdir -p /home/flask_app/listadoApks
WORKDIR /home/flask_app/listadoApks

COPY templates /home/flask_app/listadoApks/templates


COPY application.py wsgi.py boot.sh ./
RUN chmod +x boot.sh

ENV PORT 5000

ENV FLASK_APP application.py


RUN apt-get update && apt-get install -y \
    software-properties-common \
    npm
RUN npm install npm@latest -g && \
    npm install n -g && \
    n latest
RUN pip install google-play-scraper-py
RUN pip install flask
RUN pip install gunicorn
RUN pip install python-dotenv
RUN pip install pymysql
RUN pip install beautifulsoup4
RUN pip install requests
RUN pip install pyaxmlparser
RUN pip install wheel
RUN pip install gunicorn flask


EXPOSE 5000
ENTRYPOINT ["sh", "./boot.sh"]


