#!/usr/bin/env bash

# Thanks to https://miikanissi.com/blog/hotplug-dual-monitor-setup-bspwm/ for the multi monitor hotplug setup
INTERNAL_MONITOR="eDP-1"
EXTERNAL_MONITOR_LEFT="DVI-I-3-2"
EXTERNAL_MONITOR_RIGHT="DVI-I-2-1"

monitor_add() {
	# bspc wm -a "$EXTERNAL_MONITOR_LEFT" 1920x1080+0+0
	# bspc wm -a "$EXTERNAL_MONITOR_RIGHT" 1920x1080+1920+0

	# add default desktop to internal monitor
	bspc monitor "$INTERNAL_MONITOR" -a Desktop

	desktops_right=(
		dev
		web
		www
		doc
		gfx
	)
	# move first 5 desktops to external monitor
	# for desktop in $(bspc query -D --names -m "$INTERNAL_MONITOR" | sed 5q); do
	for desktop in "${desktops_right[@]}"; do
		bspc desktop "$desktop" --to-monitor "$EXTERNAL_MONITOR_RIGHT"
	done

	desktops_left=(
		sys
		notes
		chat
		mus
		vid
	)

	# move next 5 desktops to left external monitor
	for desktop in "${desktops_left[@]}"; do
		bspc desktop "$desktop" --to-monitor "$EXTERNAL_MONITOR_LEFT"
	done

	# sleep 0.5
	# bspc desktop chat --to-monitor "$EXTERNAL_MONITOR"
	# bspc desktop mus -to-monitor "$EXTERNAL_MONITOR"
	# bspc desktop vid -to-monitor "$EXTERNAL_MONITOR"
	# bspc desktop gfx -to-monitor "$EXTERNAL_MONITOR"

	# reorder desktops
	bspc monitor "$EXTERNAL_MONITOR_RIGHT" -d dev web www doc gfx
	bspc monitor "$EXTERNAL_MONITOR_LEFT" -d sys notes chat mus vid

	# reorder monitors
	# bspc monitor "$INTERNAL_MONITOR" -r
	bspc wm -O "$EXTERNAL_MONITOR_LEFT" "$EXTERNAL_MONITOR_RIGHT"
}

monitor_remove() {
	# bspc wm -a "$INTERNAL_MONITOR" 1920x1080+0+0
	# Add default temp desktop because a minimum of one desktop is required per monitor
	bspc monitor "$EXTERNAL_MONITOR_RIGHT" -a Desktop
	bspc monitor "$EXTERNAL_MONITOR_LEFT" -a Desktop

	desktops=(
		dev
		web
		www
		doc
		gfx
		sys
		notes
		chat
		mus
		vid
	)
	# Move all desktops except the last default desktop to internal monitor
	# for desktop in $(bspc query -D -m "$EXTERNAL_MONITOR"); do
	for desktop in "${desktops[@]}"; do
		bspc desktop "$desktop" --to-monitor "$INTERNAL_MONITOR"
	done

	# reorder desktops
	bspc monitor "$INTERNAL_MONITOR" -d dev web www sys doc notes chat mus vid gfx
	# bspc monitor "$EXTERNAL_MONITOR_LEFT" -r
	# bspc monitor "$EXTERNAL_MONITOR_RIGHT" -r
}

if [[ $(xrandr -q | grep "${EXTERNAL_MONITOR_RIGHT} connected") ]]; then
	# set xrandr rules for docked setup
	xrandr --output "$INTERNAL_MONITOR" --off
	xrandr --output "$EXTERNAL_MONITOR_LEFT" --mode 1920x1080 --pos 0x0 --rotate normal --output "$EXTERNAL_MONITOR_RIGHT" --primary --mode 1920x1080 --pos 1920x0 --rotate normal
	if [[ $(bspc query -D -m "${EXTERNAL_MONITOR_LEFT}" | wc -l) -ne 4 ]]; then
		monitor_add
	fi
	bspc wm -O "$EXTERNAL_MONITOR_RIGHT" "$EXTERNAL_MONITOR_LEFT"
else
	# set xrandr rules for mobile setup
	xrandr --output "$INTERNAL_MONITOR" --primary --mode 1920x1080 --pos 0x0 --rotate normal --output "$EXTERNAL_MONITOR" --off
	if [[ $(bspc query -D -m "${INTERNAL_MONITOR}" | wc -l) -ne 9 ]]; then
		monitor_remove
	fi
fi

nitrogen --random --set-zoom-fill &
betterlockscreen -u ~/wallpapers/catppuccin/ &

# # Launch Polybar
# sleep 0.5
# /home/manasmengle/.config/polybar/launch.sh &
