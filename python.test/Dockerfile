# Dockerfile, Image, Container

FROM python:3.10

# Copy local code to the container image.
ADD . /python.test
WORKDIR /python.test

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

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 serverDeploy:app
