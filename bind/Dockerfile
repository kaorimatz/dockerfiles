FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all
RUN yum -y install bind && yum clean all

ADD disable-privatetmp.conf /etc/systemd/system/named.service.d/

RUN systemctl enable named

EXPOSE 53/udp
