#!/bin/bash

redshift -P -O 4500

# disable mouse acceleration and lower the sensitivity
# use xinput list to get device id
# xinput --set-prop <id> 'libinput Accel Profile Enabled' 0, 1
# xinput --set-prop <id> 'libinput Accel Speed' -0.5

# enable natural scrolling and tapping for touchpad
# use xinput list to get device id
# xinput --set-prop <id> 'libinput Natural Scrolling Enabled' 1
# xinput --set-prop <id> 'libinput Tapping Enabled' 1

while true
do
        # make sure that BAT0 is your battery
	# BAT="$(cat /sys/class/power_supply/BAT0/capacity)%"
	# find the right thermal zone, cat /sys/class/thermal/thermal_zone*/type and choose the one that outputs x86_pkg_temp
        # TEMP="$(($(cat /sys/class/thermal/thermal_zone0/temp)/1000))C"
	LOCALTIME=$(date +"%a %d %B %Y %l:%M %p")

	xsetroot -name "BAT: $BAT | CPU TEMP: $TEMP | TIME: $LOCALTIME"
	
	sleep 20s
done &

exec dwm
