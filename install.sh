#! /bin/sh
# install.sh
#install pkgdepcheck

chmod +x pkgdepcheck slkparse.sh slapt-get-search.sh slapt-get-update.sh
mkdir -p /usr/libexec/pkgdepcheck
cp slkparse.sh slapt-get-search.sh slapt-get-update.sh /usr/libexec/pkgdepcheck
cp ./pkgdepcheck /usr/local/bin
