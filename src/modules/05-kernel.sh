#!/bin/bash
#
# Module:   Kernel
# Purpose:  Prints information about the kernel and operating system
# Author:   C. Vagnetoft (Noccy80)
#
# This file is part of LinuxInfo. It is licensed under the GNU GPL version 3.
#

source      FORMAT
header      "Kernel Information"
listitem    "OS"        "$(uname -os)"
listitem    "Platform"  "$(uname -ip)"
listitem    "Version"   "$(uname -rv)"

subheader   "Loaded Modules"
command     lsmod
