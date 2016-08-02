#!/bin/bash 
docker exec -d mysql mysql -uroot -p123456 -e "create database blog;"
docker exec -d mysql mysql -uroot -p123456  blog < blog.sql 
docker build -t feiyu/django-app .
docker run --name django \
-v /usr/src/myblog \
-v /usr/src/myblog/static \
--link mysql:mysql \
--link redis:redis \
-p 12000:8000 \
-d feiyu/django-app /usr/local/bin/gunicorn myblog.wsgi:application -w 1 -b :8000
