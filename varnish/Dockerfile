FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install varnish && dnf clean all

ADD 50-no-private-tmp.conf /etc/systemd/system/varnish.service.d/

RUN systemctl enable varnish

EXPOSE 6081
