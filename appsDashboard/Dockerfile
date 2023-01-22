FROM python:3.10

ENV DASH_DEBUG_MODE False


RUN mkdir -p /home/dashboard
WORKDIR /home/dashboard

COPY ./app ./app

COPY requirements.txt ./
COPY wsgi.py ./

RUN set -ex && \
    pip install -r requirements.txt


EXPOSE 8080

CMD ["gunicorn", "-b", "0.0.0.0:8080", "--reload", "wsgi:app"]


