#!/usr/bin/env bash
docker run --name mysql \
-v $(pwd)/conf.d:/etc/mysql/conf.d \
-e MYSQL_ROOT_PASSWORD=mysqlpassword \
-p 3307:3306 \
-d mysql:5.6.30 \
--character-set-server=utf8 --collation-server=utf8_unicode_ci
sleep 15
docker exec -d mysql mysql -pmysqlpassword -e "create database main"
