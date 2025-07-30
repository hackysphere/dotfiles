#/bin/sh
# 6500K is default hyprsunset temperature, so it is hardcoded (may have been a bad decision)
pidof hyprsunset > /dev/null || (printf "{\"text\": \"failed\", \"alt\": \"failed\", \"tooltip\": \"hyprsunset not started\", \"class\": \"failed\"}" && exit); # waybar requires exit 0 to not break module

NIGHT_TEMP=5000 # also set in .config/hypr/hyprsunset.conf
COMMAND=$1
STATE=""
TEMP=$(hyprctl hyprsunset temperature)

if [ "$TEMP" = 6500 ]; then
    STATE="day";
else
    STATE="night"
fi;

if [ "$1" = "switch" ]; then
    if [ "$STATE" = "day" ]; then
        hyprctl hyprsunset temperature $NIGHT_TEMP > /dev/null; STATE="night"; TEMP=$NIGHT_TEMP;
    else
        hyprctl hyprsunset temperature 6500 > /dev/null; STATE="day"; TEMP=6500;
    fi;
fi;


printf "{\"text\": \"$STATE\", \"alt\": \"$STATE\", \"tooltip\": \"${TEMP}K\", \"class\": \"$STATE\"}";
