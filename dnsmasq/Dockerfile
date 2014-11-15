FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install dnsmasq && dnf clean all

EXPOSE 53/udp 67/udp 69/udp

RUN systemctl enable dnsmasq
