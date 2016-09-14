FROM centos:7
MAINTAINER Patrik Bergman, "patrik.bergman@infinera.com"

ADD config/MariaDB.repo /etc/yum.repos.d/MariaDB.repo

RUN yum update; yum -y install mariadb-server mariadb initscripts; yum clean all

ADD config/server.cnf /etc/my.cnf.d/server.cnf
ADD mariadb.sh /root/mariadb.sh

RUN chmod 775 /root/mariadb.sh
RUN ./root/mariadb.sh
