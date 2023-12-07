#!/bin/bash

redshift -P -O 4500

# use xinput list to get device id (0 is a placeholder)

# mouse
xinput --set-prop 0 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 0 'libinput Accel Speed' -0.5

# touchpad
xinput --set-prop 0 'libinput Natural Scrolling Enabled' 1
xinput --set-prop 0 'libinput Tapping Enabled' 1
xinput --set-prop 0 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 0 'libinput Accel Speed' -0.3

exec dwm
