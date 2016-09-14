#!/bin/bash

CONTAINER="rabbitmq-mariadb-container"
IMAGE="rabbitmq-mariadb:1"

docker stop $CONTAINER
docker rm $CONTAINER
docker rmi $IMAGE
docker build --rm --tag="$IMAGE" .

#docker run -it --name=rabbitmq-mariadb-container rabbitmq-mariadb:1 bash
#docker run -it --name=$CONTAINER $IMAGE bash