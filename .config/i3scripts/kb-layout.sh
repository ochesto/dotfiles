#!/bin/bash

case $BLOCK_BUTTON in
    1|2|3) notify-send "Super+Space to switch keyboard layout"
esac

lang=$(setxkbmap -query | awk '/^layout/ {print $2}')
if [ $lang == 'us' ]; then
    echo 'US'
elif [ $lang == 'latam' ]; then
    echo 'LA'
fi
