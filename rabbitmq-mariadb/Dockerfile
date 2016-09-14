FROM mariadb:1
MAINTAINER Patrik Bergman, "patrik.bergman@infinera.com"

RUN yum update; curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | bash; \
	yum -y install \
		https://www.rabbitmq.com/releases/erlang/erlang-18.3-1.el7.centos.x86_64.rpm \
		rabbitmq-server \
		yum clean all; \
		mkdir -p /run/lock/subsys
#RUN chkconfig rabbitmq-server on