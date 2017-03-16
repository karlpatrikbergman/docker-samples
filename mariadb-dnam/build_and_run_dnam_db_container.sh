#!/bin/bash - 
#===============================================================================
DNAM_DB_IMAGE=dnam_db_image
DNAM_DB_CONTAINER=dnam_db_container

docker stop ${DNAM_DB_CONTAINER}
docker rm ${DNAM_DB_CONTAINER}
docker rmi ${DNAM_DB_IMAGE}
docker build -t ${DNAM_DB_IMAGE} .
#docker run -d --name ${DNAM_DB_CONTAINER} -p 3306:3306 ${DNAM_DB_IMAGE}
docker run -d --name ${DNAM_DB_CONTAINER} ${DNAM_DB_IMAGE}
#sleep 15
#docker exec -i ${DNAM_DB_CONTAINER} mysql -uroot -proot < initDb.sql

