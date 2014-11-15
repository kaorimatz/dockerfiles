FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install bind && dnf clean all

ADD disable-privatetmp.conf /etc/systemd/system/named.service.d/

RUN systemctl enable named

EXPOSE 53/udp
