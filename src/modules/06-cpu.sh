#!/bin/bash
#
# Module:   CpuInfo
# Purpose:  Prints information about the CPUs installed
# Author:   C. Vagnetoft (Noccy80)
#
# This file is part of LinuxInfo. It is licensed under the GNU GPL version 3.
#

source      FORMAT
header      "Processor Information"
command     cat /proc/cpuinfo
