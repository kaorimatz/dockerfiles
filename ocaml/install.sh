#!/bin/sh

set -e
set -u
set -x

OCAML_VERSION=4.02.1
OCAML_SOURCE_ARCHIVE=ocaml-${OCAML_VERSION}.tar.gz
OCAML_SOURCE=ocaml-${OCAML_VERSION}

dnf -y install tar gcc make

curl http://caml.inria.fr/pub/distrib/ocaml-4.02/${OCAML_SOURCE_ARCHIVE} > /${OCAML_SOURCE_ARCHIVE}
tar zxf /${OCAML_SOURCE_ARCHIVE} -C /
(cd /${OCAML_SOURCE} && ./configure -prefix /opt/ocaml)
make -C /${OCAML_SOURCE} world.opt install

dnf -y remove tar gcc make
dnf clean all
rm -rf /${OCAML_SOURCE_ARCHIVE} /${OCAML_SOURCE}
