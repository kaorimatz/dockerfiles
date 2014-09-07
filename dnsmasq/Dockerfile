FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all
RUN yum -y install dnsmasq && yum clean all

EXPOSE 53/udp 67/udp 69/udp

RUN systemctl enable dnsmasq
