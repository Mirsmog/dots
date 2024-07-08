#!/bin/bash
source './dirs.conf'

source_dir="$HOME/.config"
target_dir="$HOME/dots/.config"


for dir in "${configs_dir[@]}"; do
  rsync -av --exclude '.git/' "$source_dir/$dir/" "$target_dir/$dir/"
done
