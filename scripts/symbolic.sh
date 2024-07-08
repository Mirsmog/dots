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
  ln -sfn "$source_dir/$config" "$target_dir/$config"
done

echo "Symbolic links created for all configurations."
