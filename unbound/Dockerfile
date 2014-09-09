FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all
RUN yum -y install unbound && yum clean all

RUN systemctl enable unbound

EXPOSE 53/udp
