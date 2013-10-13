#!/bin/bash

test -e /etc/issue || exit 1
# Ubuntu detected
echo "=== DISTRIBUTION INFO ======"
echo "  Distribution: Ubuntu"
echo -n "       Release: `cat /etc/issue`"

