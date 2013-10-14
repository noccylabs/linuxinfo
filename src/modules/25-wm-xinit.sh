#!/bin/bash

if [ ! -e $HOME/.xinitrc ]; then
    exit 1
fi

source      FORMAT
header      "Window Manager and Display Manager"
listitem    "DisplayManager"    "None (.xinitrc)"
listitem    "Exec"              "$(cat $HOME/.xinitrc | grep '^exec' | cut -d' ' -f2)"
