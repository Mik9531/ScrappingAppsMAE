FROM python:3.10



RUN mkdir -p /home/dashboard
WORKDIR /home/dashboard

COPY assets /home/dashboard/assets


COPY index.py app.py boot.sh home.py graphics.py totalApps.py top_maps.py requirements.txt ./
RUN chmod +x boot.sh



RUN pip install dash-iconify==0.1.2
RUN pip install -r requirements.txt
RUN pip install gunicorn
RUN pip install dash-daq


ENV PORT 8080

EXPOSE 8080

CMD gunicorn -w 1 -b 0.0.0.0:8080 -t 600 index:server


