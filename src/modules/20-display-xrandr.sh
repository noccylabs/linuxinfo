#!/bin/bash
if [ -z $(which xrandr 2&>1 1>/dev/null) ]; then
    exit 1;
fi

echo "=== XRANDR INFORMATION ======"
xrandr
echo ""

echo "=== XRANDR PROVIDERS ======"
xrandr --listproviders
