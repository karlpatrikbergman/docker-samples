IMAGE="centos7-systemd-httpd-img:1"
docker rmi $IMAGE
docker build --rm --tag="$IMAGE" .