#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

docker rm wait_container
docker rmi wait_img
docker build -t wait_img .
docker run --entrypoint ./wait-for-it.sh --name wait_container wait_img localhost 80 ./app.sh patrik

