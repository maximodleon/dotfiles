#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# display bar in all monitors
if type "xrandr"; then
  for m in $(xrandr --query | grep -w "connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bar1 &
    MONITOR=$m polybar --reload bar2 &
  done
else
  polybar --reload bar1 &
  polybar --reload bar2 &
fi
# Launch bar1 and bar2
# polybar bar1 # &
# polybar bar2 &

echo "Bars launched..."
