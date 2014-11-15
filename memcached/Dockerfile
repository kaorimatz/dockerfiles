FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install memcached && dnf clean all

RUN systemctl enable memcached

EXPOSE 11211
