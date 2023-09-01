redshift -P -O 4500

# disable mouse acceleration and lower the sensitivity
# use xinput list to get device id
# xinput --set-prop <id> 'libinput Accel Profile Enabled' 0, 1
# xinput --set-prop <id> 'libinput Accel Speed' -0.5

# enable natural scrolling for touchpad
# use xinput list to get device id
xinput set-prop <id> "libinput Natural Scrolling Enabled" 1

while true
do
        LOCALTIME=$(date +"%B %d %Y %I:%M %p")
        RAM=$(free -m | grep "Mem:" | awk '{print $3}')

        xsetroot -name "RAM usage: $RAM MB | $LOCALTIME"

        sleep 1s
done &

exec dwm
