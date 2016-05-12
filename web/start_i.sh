#!/usr/bin/env bash
docker run -it \
-e DB_DEFAULT=main \
-v /usr/src/app \
-v /usr/src/app/static \
--link mysql:mysql \
--link redis:redis \
django-app \
/bin/bash
