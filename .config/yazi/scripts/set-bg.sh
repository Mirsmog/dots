#!/bin/bash

directory=$WALLPAPERS_DIR
config_file="$HOME/Pictures/Wallpapers/.current"
wallpaper="$1"

if [ -z "$wallpaper" ]; then
  echo "Error: Wallpaper file path not provided."
  exit 1
fi

feh --bg-fill "$wallpaper"
echo "$wallpaper" >"$config_file"
