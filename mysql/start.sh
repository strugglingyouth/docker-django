docker run --name mysql \
-e MYSQL_ROOT_PASSWORD=mysqlpassword \
-p 3306:3306 \
-d mysql:5.6.30
sleep 10
docker exec -d mysql mysql -h 192.168.99.100 -uroot -pmysqlpassword -e "create database main"

