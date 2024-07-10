#!/bin/bash

CONFIG_FILES="$HOME/.config/waybar/config.jsonc $HOME/.config/waybar/style.css $HOME/.cache/wal/colors-waybar.css"

pkill -f 'waybar -c'

waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css &

while true; do
    \cp -r ~/.cache/wal/colors-waybar.css ~/.config/waybar/themes
    inotifywait -e create,modify $CONFIG_FILES
    # pkill -HUP -f 'waybar -c'
done
