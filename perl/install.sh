#!/bin/sh

set -e
set -u
set -x

dnf -y install perl patch tar bzip2 make gcc

curl -fsSL https://raw.githubusercontent.com/tokuhirom/Perl-Build/master/perl-build > /perl-build
chmod +x /perl-build
/perl-build 5.20.0 /opt/perl

dnf -y remove perl patch tar bzip2 make gcc
dnf clean all
rm -f /perl-build
