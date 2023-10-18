#!/bin/bash

redshift -P -O 4500

# disable mouse acceleration and lower the sensitivity
# use xinput list to get device id (0 is a placeholder)
xinput --set-prop 0 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 0 'libinput Accel Speed' -0.5

# enable natural scrolling and tapping for touchpad
# use xinput list to get device id (0 is a placeholder)
xinput --set-prop 0 'libinput Natural Scrolling Enabled' 1
xinput --set-prop 0 'libinput Tapping Enabled' 1

while true
do
	BAT="$(cat /sys/class/power_supply/BAT0/capacity)%"
	CPU_TEMP="$(($(cat /sys/class/thermal/thermal_zone9/temp)/1000))C"
	MEM="$(free | grep Mem | awk '{print $3/$2 * 100.0}')%"
	LOCALTIME=$(date +"%a %d %B %Y %l:%M %p")

	xsetroot -name "BAT: $BAT | CPU TEMP: $CPU_TEMP | USED MEM: $MEM | TIME: $LOCALTIME"
	
	sleep 20s
done &

exec dwm
