#!/usr/bin/env sh

pidof dunst > /dev/null || { printf '{"text": "", "alt": "not-started", "tooltip": "dunst not started", "class": "not-started"}' && exit; };

state="normal"
waitingcount=$(dunstctl count waiting)

if [ $(dunstctl get-pause-level) -gt 0 ]; then
	if [ $waitingcount -gt 0 ]; then state="dnd-notification";
	else state="dnd"; fi;
fi;

if [ $waitingcount == 0 ]; then waitingcount=""; fi;

printf "{\"text\": \"$waitingcount\", \"alt\": \"$state\", \"tooltip\": \"\", \"class\": \"$state\"}";
