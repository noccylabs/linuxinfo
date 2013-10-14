#!/bin/bash
if [ -z $(which pacmd 2>/dev/null) ]; then
    exit 1
fi

source      FORMAT
header      "PulseAudio Sinks"
command     pacmd list-sinks

echo ""
header      "PulseAudio Sources"
command     pacmd list-sources
