#!/bin/bash 
docker exec -d mysql mysql -uroot -pmysqlpassword -e "create database main;"
docker build -t feiyu/django-app .
docker run --name django \
-v /usr/src/app \
-v /usr/src/app/static \
--link mysql:mysql \
--link redis:redis \
-p 12000:8000 \
-d feiyu/django-app /usr/local/bin/gunicorn web_django.wsgi:application -w 1 -b :8000
