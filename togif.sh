#!/bin/bash

# https://gist.github.com/dergachev/4627207

PATH_TO_FILE=$1
FILENAME=$(basename $PATH_TO_FILE)
ffmpeg -i "$PATH_TO_FILE" -s 800x600 -pix_fmt rgb8 -r 10 -f gif - | gifsicle --optimize=3 --delay=10 > "$FILENAME.gif"
