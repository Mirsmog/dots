#!/bin/bash

[ -f ~/.wallpapers_dir ] && source ~/.wallpapers_dir

directory=$WALLPAPERS_DIR
last_background_file="$directory/.last_background"
image_path=$(cat "$last_background_file")

if [[ "$WALLPAPERS_DIR" != "$HOME/Pictures/Wallpapers" ]]; then
  notify-send "Изображение добавлено в избранное" "$image_path" -i $image_path
  mv "$image_path" "$HOME/Pictures/Wallpapers" && $HOME/.config/hypr/scripts/random-wallpaper.sh
fi

