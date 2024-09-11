#!/bin/bash

SOURCE_DIR="$HOME/.config/nvim"
DEST_DIR="$HOME/dots/.config/nvim"
COMMIT_MSG="update nvim config"

if [ -n "$1" ]; then
	COMMIT_MSG="$1"
fi

rm -rf "$DEST_DIR"
cp -r "$SOURCE_DIR" "$DEST_DIR"
cd "$HOME/dots/" || exit

git add .
git commit -m "$COMMIT_MSG"
git push
