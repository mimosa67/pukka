#! /bin/sh
# install.sh
#install pkgdepcheck

chmod +x pukka slkparse.sh slapt-get-search.sh slapt-get-update.sh
mkdir -p /usr/libexec/pkgdepcheck
cp pkgdepcheckrc slkparse.sh slapt-get-search.sh slapt-get-update.sh /usr/libexec/pkgdepcheck
cp ./pukka /usr/local/bin
