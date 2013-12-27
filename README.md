pukka
===========

Compare two Salix / Slackware repos and deduce information about missing packages; download package files

This script uses code by Cyrille Pontvieux, from SaLT scripts, and by
Frédéric Galusik, from pkgtxt2db, gratefully acknowledged. It also
depends on python-parsepkgtxt, available from Salix repos or via pip.

Many thanks too to laprjns, JRD and gapan for advice and testing.

pukka -h gives a rundown of the options, and see the man page, but the main ones are:

-p to give information on a particular package

-D to check the repos for needed but unpackaged items

-P outputs packages by a particular packager 

-d downloads source and package files from the previous Salix version; -ns and -np switches not to 
include source or package files, respectively
