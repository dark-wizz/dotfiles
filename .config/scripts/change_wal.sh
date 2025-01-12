#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers"
WALLPAPERS=("$WALLPAPER_DIR"/*)
COUNT=${#WALLPAPERS[@]}

if [ "$COUNT" -eq 0 ]; then
    echo "No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

# Select a random wallpaper
RANDOM_WALLPAPER="${WALLPAPERS[RANDOM % COUNT]}"

printf "
ipc = off

reload = ,$RANDOM_WALLPAPER
" > $HOME/.config/hypr/hyprpaper.conf

killall hyprpaper
hyprpaper &

