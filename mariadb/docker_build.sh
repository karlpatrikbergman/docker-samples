#!/bin/bash

CONTAINER="mariadb-container"
IMAGE="mariadb:1"
docker rmi $IMAGE
docker build --rm --tag="$IMAGE" .

#docker run -it --name=tnm-db-container $IMAGE
#docker run -it --name=mariadb-container mariadb:1


