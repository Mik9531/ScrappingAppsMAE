# Dockerfile, Image, Container

FROM python:3

RUN apt-get update \
    && apt-get -y install gcc make \
    && rm -rf /var/lib/apt/lists/*s

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
RUN apt-get -y update
RUN apt-get install -y google-chrome-stable

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install

RUN pip install gunicorn
RUN pip install gunicorn flask
RUN pip install google-play-scraper


# Copy local code to the container image.
RUN mkdir -p /home/flask_app/listadoApks
WORKDIR /home/flask_app/listadoApks

COPY templates /home/flask_app/listadoApks/templates
COPY APKS /home/flask_app/listadoApks/APKS
COPY application.py wsgi.py boot.sh ./
COPY requirements.txt /home/flask_app/listadoApks/requirements.txt

RUN pip install -r requirements.txt


ENV PORT 5000

ENV FLASK_APP application.py

RUN chmod +x boot.sh

EXPOSE 5000
ENTRYPOINT ["sh", "./boot.sh"]


