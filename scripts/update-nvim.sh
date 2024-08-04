#!/bin/bash

SOURCE_DIR="$HOME/.config/nvim"
DEST_DIR="$HOME/dots/.config/nvim"

rm -rf "$DEST_DIR"
cp -r "$SOURCE_DIR" "$DEST_DIR"
cd "$HOME/dots/"

git add .
git commit -m "update nvim config"
git push
