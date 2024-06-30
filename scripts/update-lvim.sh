#!/bin/bash

SOURCE_DIR="$HOME/.config/lvim"
DEST_DIR="$HOME/dots/.config/lvim"

rm -rf "$DEST_DIR"
cp -r "$SOURCE_DIR" "$DEST_DIR"
cd "$HOME/dots/"

git add .
git commit -m "update lunarvim config"
git push
