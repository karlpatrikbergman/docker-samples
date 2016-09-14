FROM centos:7
MAINTAINER Patrik Bergman, "patrik_bergman@yahoo.com"

RUN yum update
RUN yum -y install java-1.8.0-openjdk-headless.x86_64
RUN yum -y install mariadb-server
RUN yum -y install initscripts

CMD ["/bin/bash"]
