#!/bin/bash

if [ -z "$1" ]; then
  echo "Ошибка: не указан путь к файлу обоев."
  exit 1
fi

monitor=$(hyprctl monitors | grep Monitor | awk '{print $2}')
wallpaper="$1"

hyprctl hyprpaper unload all
hyprctl hyprpaper preload $wallpaper
hyprctl hyprpaper wallpaper "$monitor, $wallpaper"
