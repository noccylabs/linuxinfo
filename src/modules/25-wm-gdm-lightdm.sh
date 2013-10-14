#!/bin/bash

if [ -z $GDMSESSION ]; then
    exit 1
fi

echo "=== WINDOW MANAGER ======"
echo "       DM: LightDM/GDM"
echo "  Session: $GDMSESSION"

