#!/bin/bash

if [ -z $(which glxinfo 2>/dev/null) ]; then
    exit 1
fi

echo "=== GLX INFO ======"
glxinfo
