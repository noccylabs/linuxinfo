#!/bin/bash

# Version of linuxinfo
VERSION=1.0.0

# Create directories
test -e out || mkdir out

# Make the package
makeself/makeself.sh src out/linuxinfo-$VERSION.run "LinuxInfo $VERSION" ./linuxinfo.sh
