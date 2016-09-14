#!/bin/bash

CONTAINER="tnm-rabbitmq-mariadb-container"
IMAGE="tnm-rabbitmq-mariadb:1"

docker stop $CONTAINER
docker rm $CONTAINER
#docker rmi $IMAGE
docker build --rm --tag="$IMAGE" .

#docker run -it --name=tnm-rabbitmq-mariadb-container tnm-rabbitmq-mariadb:1 bash
#docker run -it --name=$CONTAINER $IMAGE bash

#docker run -d --name=tnm-rabbitmq-mariadb-container tnm-rabbitmq-mariadb:1 && tail -f /dev/null
