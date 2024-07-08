#!/bin/bash
source_dir="$HOME/.config"
target_dir="$HOME/dots/.config"

configs=(
"cava"
"fastfetch"
"hypr"
"kitty"
"lvim"
"nvim"
"ranger"
"waybar"
"yazi"
)

for config in "${configs[@]}"; do
  rsync -av --exclude '.git/' "$source_dir/$config/" "$target_dir/$config/"
done
