FROM python:3.10

ENV DASH_DEBUG_MODE False


RUN mkdir -p /home/dashboard
WORKDIR /home/dashboard

COPY ./app ./app

COPY requirements.txt ./
COPY querys.py ./
COPY boot.sh ./

COPY wsgi.py ./

RUN set -ex && \
    pip install -r requirements.txt

EXPOSE 8080
ENTRYPOINT ["sh", "./boot.sh"]


