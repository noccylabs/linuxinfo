#!/bin/bash

if [ ! -e $HOME/.xinitrc ]; then
    exit 1
fi

echo "=== WINDOW MANAGER ======"
echo "    DM: None (.xinitrc)"
echo "  Exec: `cat .xinitrc | grep '^exec' | cut -d' ' -f2`"
