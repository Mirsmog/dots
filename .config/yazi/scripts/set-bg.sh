#!/bin/bash

directory=$WALLPAPERS_DIR
config_file="$HOME/.config/hypr/hyprpaper.conf"
monitor=$(hyprctl monitors | grep Monitor | awk '{print $2}')
wallpaper="$1"
extension="${wallpaper##*.}"

if [ -z "$wallpaper" ]; then
  echo "Error: Wallpaper file path not provided."
  exit 1
fi

kill_mpvpaper() {
  if pgrep mpvpaper >/dev/null; then
    pkill mpvpaper
  fi
}

kill_hyprpaper() {
  pkill hyprpaper
}

if [[ "$extension" == "mp4" ]]; then
  kill_hyprpaper
  kill_mpvpaper
  nohup mpvpaper -f -o "--loop-playlist" $monitor "$wallpaper" >/dev/null 2>&1 &
else
  kill_mpvpaper
  nohup hyprpaper >/dev/null 2>&1 &
  hyprctl hyprpaper unload all
  hyprctl hyprpaper preload $wallpaper
  hyprctl hyprpaper wallpaper "$monitor, $wallpaper"

  sed -i "s|preload = .*$|preload = $wallpaper|" $config_file
  sed -i "s|wallpaper = ,.*$|wallpaper = ,$wallpaper|" $config_file
fi
