#!/usr/bin/env bash

# 1. Terminate already running bar instances
killall -q polybar

# 2. Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# 3. Launch bars for each monitor
# We use xrandr to find all connected monitors and launch a bar on each.
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload dbar &
  done
else
  polybar --reload dbar &
fi

echo "Bars launched..."
