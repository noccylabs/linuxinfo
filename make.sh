#!/bin/bash
source src/VERSION
test -z $RELEASE || REL="-$RELEASE"

# Create directories
test -e out || mkdir out

# Make the package
makeself/makeself.sh src out/linuxinfo-$VERSION$REL.run "LinuxInfo $VERSION $RELEASE" ./linuxinfo.sh
