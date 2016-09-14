CONTAINER="tnm-centos7-container"
IMAGE="tnm-centos7-img:1"

docker stop $CONTAINER
docker rm $CONTAINER
docker rmi $IMAGE
docker build --tag="$IMAGE" .
docker run -it \
    -v /usr/local/src/docker-temp/tnm/config/etc/yum.repos.d/tnm-dev.repo:/etc/yum.repos.d/tnm-dev.repo \
    -v /usr/local/src/docker-temp/tnm/config/etc/yum.repos.d/MariaDB.repo.repo:/etc/yum.repos.d/MariaDB.repo \
    --name=$CONTAINER $IMAGE
