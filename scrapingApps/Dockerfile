# Dockerfile, Image, Container
FROM python:3
RUN mkdir -p /home/flask_app/listadoApks
WORKDIR /home/flask_app/listadoApks
# Install Chrome WebDriver
RUN CHROMEDRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` && \
    mkdir -p /opt/chromedriver-$CHROMEDRIVER_VERSION && \
    curl -sS -o /tmp/chromedriver_linux64.zip http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip && \
    unzip -qq /tmp/chromedriver_linux64.zip -d /opt/chromedriver-$CHROMEDRIVER_VERSION && \
    rm /tmp/chromedriver_linux64.zip && \
    chmod +x /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver && \
    ln -fs /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver /usr/local/bin/chromedriver
# Install Google Chrome
RUN curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list && \
    apt-get -yqq update && \
    apt-get -yqq install google-chrome-stable && \
    rm -rf /var/lib/apt/lists/*
RUN pip install gunicorn
RUN pip install gunicorn flask
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


