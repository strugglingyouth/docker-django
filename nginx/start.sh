docker build -t nginx .
docker run --name nginx-server \
--link django:web \
-v /www/static \
--volumes-from django \
-p 80:80 \
-d nginx
