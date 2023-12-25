#!/usr/bin/env bash

op=$(echo -e " shutdown\n reboot\n suspend\n lock\n logout" | wofi -c ~/.config/wofi/config.power -i --dmenu | awk '{print tolower($2)}')

case $op in
poweroff) ;&
reboot) ;&
suspend)
	systemctl $op
	;;
lock)
	swaylock
	;;
logout)
	swaymsg exit
	;;
esac
