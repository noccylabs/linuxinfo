#!/bin/bash
if [ -z `which aplay` ]; then 
    exit 1
fi 
echo "==== ASLA PLAYBACK DEVICES ===="
aplay -l | tail -n+2
