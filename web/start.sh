#!/usr/bin/env bash
docker build -t django-app .
docker run --name django \
-e DB_DEFAULT=main \
-v /usr/src/app \
-v /usr/src/app/static \
--link mysql:mysql \
--link redis:redis \
--expose=8000 \
-d django-app /usr/local/bin/gunicorn web_django.wsgi:application -w 1 -b :8000
