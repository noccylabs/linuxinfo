#!/bin/bash

if [ -z $GDMSESSION ]; then
    exit 1
fi

source      FORMAT
header      "Window Manager and Display Manager"
listitem    "DisplayManager"    "LightDM or GDM"
listitem    "Session"           "$GDMSESSION"

