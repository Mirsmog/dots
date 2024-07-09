#!/bin/bash

[ -f ~/.wallpapers_dir ] && source ~/.wallpapers_dir

directory=$WALLPAPERS_DIR
last_background_file="$directory/.last_background"

monitor=$(hyprctl monitors | grep Monitor | awk '{print $2}')

if [ -d "$directory" ]; then
  random_background=$(ls $directory/* | shuf -n 1)

  if [ -f "$last_background_file" ] && [ "$(cat $last_background_file)" == "$random_background" ]; then
    random_background=$(ls $directory/* | grep -vFf $last_background_file | shuf -n 1)
  fi

  echo $random_background >$last_background_file

  hyprctl hyprpaper unload all
  hyprctl hyprpaper preload $random_background
  hyprctl hyprpaper wallpaper "$monitor, $random_background"
fi
