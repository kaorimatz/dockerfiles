FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install httpd && dnf clean all

ADD 50-no-private-tmp.conf /etc/systemd/system/httpd.service.d/

RUN systemctl enable httpd

EXPOSE 80/tcp
