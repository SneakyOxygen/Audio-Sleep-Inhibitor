#!/bin/bash
# Save as ~/bin/audio-sleep-inhibitor.sh

INHIBIT_PID=""

pactl subscribe | while read -r line; do
    if pactl list sink-inputs | grep -q "Sink Input"; then
        # Audio is playing
        if [ -z "$INHIBIT_PID" ]; then
            systemd-inhibit --what=sleep --why="Audio playback active" --mode=block sleep infinity &
            INHIBIT_PID=$!
        fi
    else
        # No audio playing
        if [ -n "$INHIBIT_PID" ]; then
            kill "$INHIBIT_PID" 2>/dev/null
            wait "$INHIBIT_PID" 2>/dev/null
            INHIBIT_PID=""
        fi
    fi
done

