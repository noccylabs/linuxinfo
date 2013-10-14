#!/bin/bash
#
# Module:   Memory
# Purpose:  Prints information about system memory and allocation
# Author:   C. Vagnetoft (Noccy80)
#
# This file is part of LinuxInfo. It is licensed under the GNU GPL version 3.
#

source      FORMAT
header      "Memory Information"
command     cat /proc/meminfo

subheader   "Free Memory"
command     free -h
