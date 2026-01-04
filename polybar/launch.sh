#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch your bar (replace "example" with the name in your config.ini)
polybar --config=~/.config/polybar/config.ini dbar 2>&1 | tee -a /tmp/polybar.log & disown
