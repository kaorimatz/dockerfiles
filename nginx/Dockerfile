FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install nginx && dnf clean all

ADD 50-no-private-tmp.conf /etc/systemd/system/nginx.service.d/

RUN systemctl enable nginx

EXPOSE 80/tcp
