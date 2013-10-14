#!/bin/bash

test -e /etc/issue || exit 1
cat /etc/issue | grep -i "ubuntu" > /dev/null || exit 1
        
# Ubuntu detected

source      FORMAT
header      "Distribution Information"
listitem    "Distribution"  "Ubuntu"
listitem    "Release"       "$(cat /etc/issue)"

