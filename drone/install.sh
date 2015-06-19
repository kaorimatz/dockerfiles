#!/bin/sh

set -e
set -u
set -x

export GOPATH=/gocode
export PATH=$GOPATH/bin:$PATH

DRONE_DIR=$GOPATH/src/github.com/drone/drone

dnf -y install git mercurial bzr make gcc golang

git clone git://github.com/drone/drone.git $DRONE_DIR
make -C $DRONE_DIR deps
make -C $DRONE_DIR

install -d /var/lib/drone
install -m 755 $DRONE_DIR/packaging/root/usr/local/bin/drone /usr/local/bin
install -m 755 $DRONE_DIR/packaging/root/usr/local/bin/droned /usr/local/bin

dnf -y remove git mercurial bzr make gcc golang
dnf clean all
rm -rf $GOPATH
