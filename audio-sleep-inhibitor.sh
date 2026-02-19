#!/bin/bash
# Save as ~/bin/audio-sleep-inhibitor.sh

while true; do
    # Check if any application is playing audio
    if pactl list sinks | grep -q "State: RUNNING"; then
        # Audio is playing, inhibit sleep
        systemd-inhibit --what=sleep --why="Audio playback active" --mode=block sleep infinity &
        INHIBIT_PID=$!
        # Wait until audio stops
        while pactl list sinks | grep -q "State: RUNNING"; do
            sleep 5
        done
        # Audio stopped, kill the inhibitor
        kill $INHIBIT_PID 2>/dev/null
        wait $INHIBIT_PID 2>/dev/null
    fi
    sleep 5
done

