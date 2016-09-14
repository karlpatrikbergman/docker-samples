FROM rabbitmq-mariadb:1
MAINTAINER Patrik Bergman, "patrik.bergman@infinera.com"

#ADD config/tnm-dev.repo /etc/yum.repos.d/tnm-dev.repo
#ADD config/license.par /etc/tnm

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#ADD start.sh /root/start.sh
#RUN chmod 775 /root/start.sh

#ADD init-tnm-db.sh /root/init-tnm-db.sh
#RUN chmod 775 /root/init-tnm-db.sh

RUN yum update && yum -y install \
net-tools \
which;
#--enablerepo=tnm-dev install 'tnm*'; \
RUN yum clean all

RUN yum -y install python-setuptools
RUN easy_install supervisor

#RUN /opt/transmode/tnm/mainserver/scripts/setup_rabbitmq.sh
#RUN ./root/init-tnm-db.sh

RUN mkdir -p /var/log/supervisor

CMD ["/usr/bin/supervisord"]

#ENTRYPOINT ["/bin/bash", "/root/start.sh"]




