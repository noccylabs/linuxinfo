#!/bin/bash
#
# Module:   Kernel
# Purpose:  Prints information about the kernel and operating system
# Author:   C. Vagnetoft (Noccy80)
#
# This file is part of LinuxInfo. It is licensed under the GNU GPL version 3.
#

echo "=== KERNEL ======"
echo -n "       OS: "
    uname -os
echo -n " Platform: "
    uname -ip
echo -n "  Version: "
    uname -rv
