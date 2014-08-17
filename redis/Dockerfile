FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all
RUN yum -y install redis && yum clean all

ADD options.conf /etc/systemd/system/redis-server.service.d/
ADD redis /etc/sysconfig/

RUN systemctl enable redis-server

EXPOSE 6379
