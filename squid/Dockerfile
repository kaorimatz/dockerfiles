FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install squid && dnf clean all

RUN systemctl enable squid

EXPOSE 3128
