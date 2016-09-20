#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error
docker-compose rm
docker-compose -f docker-compose.yml up --build


