#!/bin/bash

redshift -P -O 4500

# use xinput list to get device id
# accel speed - use negative values for lower sensitivity

# mouse
xinput --set-prop <id> 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop <id> 'libinput Accel Speed' <value>

# touchpad
xinput --set-prop <id> 'libinput Natural Scrolling Enabled' 1
xinput --set-prop <id> 'libinput Tapping Enabled' 1
xinput --set-prop <id> 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop <id> 'libinput Accel Speed' <value>

exec dwm
