#!/bin/bash

[ -f ~/.wallpapers_dir ] && source ~/.wallpapers_dir

directory=$WALLPAPERS_DIR
last_background_file="$directory/.last_background"
image_path=$(cat "$last_background_file")

rm "$image_path" && $HOME/.config/hypr/scripts/random-wallpaper.sh
