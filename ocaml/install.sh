#!/bin/sh

set -e
set -u
set -x

OCAML_VERSION=4.02.1
OCAML_SOURCE_ARCHIVE=ocaml-${OCAML_VERSION}.tar.gz
OCAML_SOURCE=ocaml-${OCAML_VERSION}

yum -y install tar gcc make

curl http://caml.inria.fr/pub/distrib/ocaml-4.02/${OCAML_SOURCE_ARCHIVE} > /${OCAML_SOURCE_ARCHIVE}
tar zxf /${OCAML_SOURCE_ARCHIVE} -C /
(cd /${OCAML_SOURCE} && ./configure -prefix /opt/ocaml)
make -C /${OCAML_SOURCE} world.opt install

yum -y autoremove tar gcc make
yum clean all
rm -rf /${OCAML_SOURCE_ARCHIVE} /${OCAML_SOURCE}
