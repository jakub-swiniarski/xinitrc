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

exec dwm
