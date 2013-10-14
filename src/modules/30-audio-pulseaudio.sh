#!/bin/bash
if [ -z $(which pacmd 2>/dev/null) ]; then
    exit 1
fi

echo "==== PULSEAUDIO SINKS ======"
pacmd list-sinks

echo ""
echo "=== PULSEAUDIO SOURCES ======"
pacmd list-sources
