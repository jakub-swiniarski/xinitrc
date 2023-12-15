#!/bin/bash

redshift -P -O 4500

# use xinput list to get device id, 0 is a placeholder
# accel speed - use negative values for lower sensitivity, 0 means default

# mouse
xinput --set-prop 0 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 0 'libinput Accel Speed' 0

# touchpad
xinput --set-prop 0 'libinput Natural Scrolling Enabled' 1
xinput --set-prop 0 'libinput Disable While Typing Enabled' 0
xinput --set-prop 0 'libinput Tapping Enabled' 1
xinput --set-prop 0 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 0 'libinput Accel Speed' 0

exec dwm
