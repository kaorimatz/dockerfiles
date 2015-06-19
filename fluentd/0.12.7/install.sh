#!/bin/sh

set -e
set -u
set -x

FLUENTD_VERSION=0.12.7

dnf -y install gcc make

/opt/ruby/bin/gem install fluentd -v "$FLUENTD_VERSION" -N

dnf -y remove gcc make
dnf clean all
