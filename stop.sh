#/bin/bash
#

docker kill $(docker ps -a -q)
docker rm $(docker ps -a -q)
#docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
#docker run -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/docker:/var/lib/docker --rm martin/docker-cleanup-volumes
