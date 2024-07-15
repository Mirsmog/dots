#!/bin/bash
directory=$WALLPAPERS_DIR
config_file="$HOME/.config/hypr/hyprpaper.conf"
monitor=$(hyprctl monitors | grep Monitor | awk '{print $2}')

if [ -z "$1" ]; then
  echo "Ошибка: не указан путь к файлу обоев."
  exit 1
fi

wallpaper="$1"

hyprctl hyprpaper unload all
hyprctl hyprpaper preload $wallpaper
hyprctl hyprpaper wallpaper "$monitor, $wallpaper"

sed -i "s|preload = .*$|preload = $wallpaper|" $config_file
sed -i "s|wallpaper = ,.*$|wallpaper = ,$wallpaper|" $config_file
