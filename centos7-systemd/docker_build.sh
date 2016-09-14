#CONTAINER="centos7-systemd-container"
IMAGE="centos7-systemd-img:1"

#docker stop $CONTAINER
#docker rm $CONTAINER
docker rmi $IMAGE
docker build --rm --tag="$IMAGE" .

#docker run -ti --privileged -e "container=docker" \
#	-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
#	--name=centos7-systemd-container \
#	centos7-systemd-img:1 \
#	/bin/bash

# Results in out put, but console freezes?
# docker run -ti -v /sys/fs/cgroup:/sys/fs/cgroup --privileged -e "container=docker"--name=centos7-systemd-container centos7-systemd-img:1

# Results in error: 
# [!!!!!!] Failed to mount API filesystems, freezing.
# docker run -ti -v /sys/fs/cgroup:/sys/fs/cgroup:ro --name=$CONTAINER $IMAGE
# docker run -ti -v /sys/fs/cgroup:/sys/fs/cgroup:ro --name=centos7-systemd-container centos7-systemd-img:1

#docker run -ti -v /sys/fs/cgroup:/sys/fs/cgroup --privileged -e "container=docker"
#docker run -ti -v /sys/fs/cgroup:/sys/fs/cgroup:ro