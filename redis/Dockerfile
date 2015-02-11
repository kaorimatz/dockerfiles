FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install redis && dnf clean all

ADD 50-environment-file.conf /etc/systemd/system/redis.service.d/
ADD redis /etc/sysconfig/

RUN systemctl enable redis

EXPOSE 6379
