#!/bin/bash
if [ -z `which aplay` ]; then 
    exit 1
fi 

source      FORMAT
header      "ALSA Playback Devices"
command     aplay -l | tail -n+2
