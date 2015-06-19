#!/bin/sh

set -e
set -u
set -x

GO_VERSION=1.4.2
GO_SOURCE_ARCHIVE=go${GO_VERSION}.src.tar.gz
GO_SOURCE=go

dnf -y install tar gcc

curl https://storage.googleapis.com/golang/${GO_SOURCE_ARCHIVE} > /${GO_SOURCE_ARCHIVE}
tar zxf /${GO_SOURCE_ARCHIVE} -C /opt
(cd /opt/${GO_SOURCE}/src && ./make.bash)

dnf -y remove tar gcc
dnf clean all
rm -rf /${GO_SOURCE_ARCHIVE}
