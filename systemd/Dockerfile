FROM kaorimatz/fedora:rawhide

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all

RUN systemctl disable crond sshd

ADD dbus.service /etc/systemd/system/dbus.service

ENV container docker

VOLUME ["/run"]
VOLUME ["/sys/fs/cgroup"]

ENTRYPOINT ["/usr/lib/systemd/systemd"]
