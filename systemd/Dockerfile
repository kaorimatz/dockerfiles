FROM kaorimatz/fedora:rawhide

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN yum -y update && yum clean all

RUN systemctl disable crond sshd

ADD dbus.service /etc/systemd/system/dbus.service

VOLUME ["/run"]
VOLUME ["/sys/fs/cgroup"]

ENTRYPOINT ["/usr/lib/systemd/systemd"]
