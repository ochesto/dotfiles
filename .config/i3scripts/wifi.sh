#!/bin/sh

network=$(iwgetid)
#network='aloha'

case $BLOCK_BUTTON in
	1) setsid sakura -e wicd & ;;
esac

icon=""
vol="100"

printf "%s %s\\n" "$icon" "$network"
