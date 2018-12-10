#!/bin/bash

WIDTH=${WIDTH:-100}
HEIGHT=${HEIGHT:-100}
DATEFMT=${DATEFMT:-"+%d-%m-%Y %H:%M:%S"}

case "$BLOCK_BUTTON" in
  1|2|3) 

	# the position of the upper left corner of the popup
	posX=1120  #$(($BLOCK_X - $WIDTH / 2))
	posY=20  #$(($BLOCK_Y - $HEIGHT))

	i3-msg -q "exec yad --calendar \
        --width=$WIDTH --height=$HEIGHT \
	    --undecorated --fixed \
	    --close-on-unfocus --no-buttons \
	    --posx=$posX --posy=$posY \
	    > /dev/null"
esac
echo "$LABEL$(date "$DATEFMT")"

