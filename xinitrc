redshift -P -O 4500

xinput --set-prop 13 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 13 'libinput Accel Speed' -0.5

xinput set-prop 19 "libinput Natural Scrolling Enabled" 1

while true
do
        # LOCALTIME=$(date +%Z\=%Y-%m-%dT%H:%M)
        LOCALTIME=$(date +"%B %d %Y %I:%M %p")

        xsetroot -name "$LOCALTIME"

        sleep 20s
done &

exec dwm
