#!/bin/bash

if [ -e .distro ]
then
    rm .distro
    exit 1
fi

source      FORMAT
header      "Distribution Information"
listitem    "Distribution"  "Unknown"
test -e /etc/issue && listitem    "Release"       "$(cat /etc/issue)"

touch .distro
