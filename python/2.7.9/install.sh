#!/bin/sh

set -e
set -u
set -x

PYTHON_VERSION=2.7.9

yum -y install git gcc tar make bzip2-devel openssl-devel readline-devel sqlite-devel

git clone git://github.com/yyuu/pyenv.git /pyenv
/pyenv/plugins/python-build/bin/python-build "$PYTHON_VERSION" /opt/python

yum -y autoremove git gcc tar make bzip2-devel openssl-devel readline-devel sqlite-devel
yum clean all
rm -rf /tmp/python-build*
rm -rf /pyenv
