FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install community-mysql-server && dnf clean all

ADD disable-privatetmp.conf /etc/systemd/system/mysqld.service.d/

RUN systemctl enable mysqld

EXPOSE 3306
