#!/bin/bash

./mysql/start.sh
./redis/start.sh
cd ./web
./start.sh
cd ../nginx
./start.sh
