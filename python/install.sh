#!/bin/sh

set -e
set -u
set -x

PYTHON_VERSION=@PYTHON_VERSION@

dnf -y install git gcc tar make bzip2-devel openssl-devel readline-devel sqlite-devel

git clone git://github.com/yyuu/pyenv.git /pyenv
/pyenv/plugins/python-build/bin/python-build "$PYTHON_VERSION" /opt/python

dnf -y remove git gcc tar make bzip2-devel openssl-devel readline-devel sqlite-devel
dnf clean all
rm -rf /tmp/python-build*
rm -rf /pyenv
