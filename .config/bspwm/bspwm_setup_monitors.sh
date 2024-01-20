#!/usr/bin/env bash

# Thanks to https://miikanissi.com/blog/hotplug-dual-monitor-setup-bspwm/ for the multi monitor hotplug setup
INTERNAL_MONITOR="eDP-1"
EXTERNAL_MONITOR="HDMI-1-0"

monitor_add() {
	desktops=(
		dev
		www
		doc
		gfx
	)
	# move first 5 desktops to external monitor
	# for desktop in $(bspc query -D --names -m "$INTERNAL_MONITOR" | sed 5q); do
	for desktop in "${desktops[@]}"; do
		bspc desktop "$desktop" --to-monitor "$EXTERNAL_MONITOR"
	done

	# sleep 0.5
	# bspc desktop chat --to-monitor "$EXTERNAL_MONITOR"
	# bspc desktop mus -to-monitor "$EXTERNAL_MONITOR"
	# bspc desktop vid -to-monitor "$EXTERNAL_MONITOR"
	# bspc desktop gfx -to-monitor "$EXTERNAL_MONITOR"

	# reorder desktops
	bspc monitor "$EXTERNAL_MONITOR" -o dev www doc gfx
	bspc monitor "$INTERNAL_MONITOR" -o sys web notes chat mus vid

	# Remove default desktop created by bspwm
	bspc desktop Desktop --remove

	# reorder monitors
	bspc wm -O "$EXTERNAL_MONITOR" "$INTERNAL_MONITOR"
}

monitor_remove() {
	# Add default temp desktop because a minimum of one desktop is required per monitor
	bspc monitor "$EXTERNAL_MONITOR" -a Desktop

	desktops=(
		dev
		www
		doc
		gfx
	)
	# Move all desktops except the last default desktop to internal monitor
	# for desktop in $(bspc query -D -m "$EXTERNAL_MONITOR"); do
	for desktop in "${desktops[@]}"; do
		bspc desktop "$desktop" --to-monitor "$INTERNAL_MONITOR"
	done

	# delete default desktops
	bspc desktop Desktop --remove

	# reorder desktops
	bspc monitor "$INTERNAL_MONITOR" -o dev www sys doc notes chat mus vid gfx web
}

if [[ $(xrandr -q | grep "${EXTERNAL_MONITOR} connected") ]]; then
	# set xrandr rules for docked setup
	xrandr --output "$INTERNAL_MONITOR" --mode 1920x1080 --pos 0x0 --rotate normal --output "$EXTERNAL_MONITOR" --primary --mode 1920x1080 --pos 1920x0 --rotate normal
	if [[ $(bspc query -D -m "${EXTERNAL_MONITOR}" | wc -l) -ne 4 ]]; then
		monitor_add
	fi
	bspc wm -O "$EXTERNAL_MONITOR" "$INTERNAL_MONITOR"
else
	# set xrandr rules for mobile setup
	xrandr --output "$INTERNAL_MONITOR" --primary --mode 1920x1080 --pos 0x0 --rotate normal --output "$EXTERNAL_MONITOR" --off
	if [[ $(bspc query -D -m "${INTERNAL_MONITOR}" | wc -l) -ne 9 ]]; then
		monitor_remove
	fi
fi

nitrogen --random --set-zoom-fill &
betterlockscreen -u ~/wallpapers/catppuccin/ &

# Launch Polybar
sleep 0.5
/home/manasmengle/.config/polybar/launch.sh &
