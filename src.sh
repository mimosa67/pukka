#!/bin/sh

#src.sh
#parse source line in SLKBUILD
#output a list

unset source
. SLKBUILD
srclist=""
for src in "${source[@]}"; do
    src=`basename "$src"`       # strip any paths
    srclist=${srclist}${src}" " # separate with spaces
done
echo $srclist
