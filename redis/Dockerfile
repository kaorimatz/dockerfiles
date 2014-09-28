FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all
RUN yum -y install redis && yum clean all

ADD options.conf /etc/systemd/system/redis.service.d/
ADD redis /etc/sysconfig/

RUN systemctl enable redis

EXPOSE 6379
