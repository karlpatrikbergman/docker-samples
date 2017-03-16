#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

docker rm alpine_container
docker rmi alpine_img
docker build -t alpine_img .
docker run -it --name alpine_container alpine_img sh 
