#!/bin/bash
if [ -z $(which xrandr 2>/dev/null) ]; then
    exit 1;
fi

source      FORMAT
header      "XRANDR Information"
command     xrandr
subheader   "XRANDR Providers"
command     xrandr --listproviders
