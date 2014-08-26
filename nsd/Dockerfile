FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all
RUN yum -y install nsd && yum clean all

RUN systemctl enable nsd

EXPOSE 53/udp
