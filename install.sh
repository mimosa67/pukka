#! /bin/sh
# install.sh
#install pkgdepcheck

chmod +x pkgdepcheck
chmod +x src.sh
chmod +x slapt-get14.0
chmod +x slapt-get-update
mkdir -p /usr/libexec/pkgdepcheck
cp ./src.sh /usr/libexec/pkgdepcheck
cp ./slapt-get14.0 /usr/libexec/pkgdepcheck
cp ./slapt-get-update /usr/libexec/pkgdepcheck
cp ./pkgdepcheck /usr/local/bin
mkdir -p /var/slapt-get14.0
cp slapt-getrc14.0 /etc/slapt-get
