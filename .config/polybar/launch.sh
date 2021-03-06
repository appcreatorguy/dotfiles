#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
# while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
sleep 0.1

# Launch bar1
# polybar -c ~/.config/polybar/config.ini main &

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  MONITOR=$m polybar -q main -c ~/.config/polybar/config.ini &
done
