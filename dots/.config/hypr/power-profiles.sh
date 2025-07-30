#/bin/sh
profile=$(powerprofilesctl get);
new_profile=""

if [ $profile = "power-saver" ]; then
    powerprofilesctl set balanced;
    new_profile="balanced"
elif [ $profile = "balanced" ]; then
    powerprofilesctl set performance;
    new_profile="performance"
else
    powerprofilesctl set power-saver;
    new_profile="power saver"
fi;

# echo $new_profile
hyprctl notify 1 2000 0 power profile changed to $new_profile;
