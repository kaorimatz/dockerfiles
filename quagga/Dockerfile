FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install quagga && dnf clean all

RUN systemctl enable babeld bgpd isisd ospf6d ospfd ripd ripngd zebra
