FROM kaorimatz/fedora:rawhide

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all

RUN systemctl disable dnf-makecache.timer
RUN systemctl mask systemd-logind console-getty

ADD dbus.service /etc/systemd/system/dbus.service

ENV container docker

VOLUME ["/run"]
VOLUME ["/sys/fs/cgroup"]

ENTRYPOINT ["/usr/lib/systemd/systemd"]
