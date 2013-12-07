#! /bin/sh
# install.sh
#install pkgdepcheck

chmod +x pkgdepcheck
chmod +x src.sh
mkdir -p /usr/libexec/pkgdepcheck
cp src.sh /usr/libexec.pkgdepcheck
cp pkgdepcheck /usr/bin
