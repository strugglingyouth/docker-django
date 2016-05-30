#!/bin/bash

cd mysql
./start.sh

cd ../redis
./start.sh

cd ../web
./start.sh
./init_django.sh

cd ../nginx
./start.sh
