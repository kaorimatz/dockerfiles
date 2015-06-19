FROM kaorimatz/fedora

MAINTAINER Satoshi Matsumoto <kaorimatz@gmail.com>

RUN dnf -y update && dnf clean all

ADD install.sh /
RUN chmod +x /install.sh && /install.sh && rm /install.sh

EXPOSE 80
ENTRYPOINT ["/usr/local/bin/droned"]
CMD ["-port=:80", "-datasource=/var/lib/drone/drone.sqlite"]
