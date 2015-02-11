FROM kaorimatz/systemd

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install mariadb-server && dnf clean all

ADD 50-no-private-tmp.conf /etc/systemd/system/mariadb.service.d/

RUN systemctl enable mariadb

EXPOSE 3306
