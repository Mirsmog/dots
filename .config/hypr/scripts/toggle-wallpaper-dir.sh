#!/bin/bash
DIR_ALL="$HOME/Pictures/All"
DIR_WALLPAPERS="$HOME/Pictures/Wallpapers"

toggle_wallpapers_dir() {
  local message
  source ~/.wallpapers_dir # Загрузка текущего значения переменной
  if [[ "$WALLPAPERS_DIR" == "$DIR_ALL" ]]; then
    WALLPAPERS_DIR="$DIR_WALLPAPERS"
    message="Директория обоев изменена на $WALLPAPERS_DIR."
  else
    WALLPAPERS_DIR="$DIR_ALL"
    message="Директория обоев изменена на $WALLPAPERS_DIR."
  fi
  notify-send "Обновление директории обоев" "$message"
  echo "export WALLPAPERS_DIR='$WALLPAPERS_DIR'" > ~/.wallpapers_dir
}
toggle_wallpapers_dir
