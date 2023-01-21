#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
# while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
sleep 0.1

# Launch bar1
# polybar -c ~/.config/polybar/config.ini main &

if [[ $HOSTNAME == "manas-laptop" ]]; then
  FONT_0="Ubuntu:weight=bold:pixelsize=11:antialias=true;2"
  FONT_1="Font Awesome 6 Free Solid:pixelsize=12;2"
  FONT_2="Font Awesome 6 Brands:pixelsize=12;2"
  FONT_3="SauceCodePro Nerd Font:pixelsize=12;2"
  CAVA_SCRIPT="$HOME/.config/polybar/cava.sh 15"
elif [[ $HOSTNAME == "tejas-laptop" ]]; then
  FONT_0="Ubuntu:weight=bold:pixelsize=9:antialias=true;2"
  FONT_1="Font Awesome 6 Free Solid:pixelsize=10;2"
  FONT_2="Font Awesome 6 Brands:pixelsize=10;2"
  FONT_3="SauceCodePro Nerd Font:pixelsize=10;2"
  CAVA_SCRIPT="$HOME/.config/polybar/cava.sh 12"
fi

for m in $(polybar --list-monitors | cut -d":" -f1); do
  FONT_0="$FONT_0" FONT_1="$FONT_1" FONT_2="$FONT_2" FONT_3="$FONT_3" CAVA_SCRIPT="$CAVA_SCRIPT" MONITOR=$m polybar -q main -c ~/.config/polybar/config.ini & sleep 0.5 
done
