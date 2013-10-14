#!/bin/bash

source      FORMAT
header      "Open File Statistics (per binary)"
command     lsof | awk '{ print $1; }' | sort -rn | uniq -c | sort -rn | head

subheader   "Open File Statistics (per pid)"
command     lsof | awk '{ print $2; }' | sort -rn | uniq -c | sort -rn | head
