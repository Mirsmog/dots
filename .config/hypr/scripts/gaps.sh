#!/usr/bin/env bash

# Retrieve current gap values
gaps_in=$(hyprctl getoption general:gaps_in | grep 'custom type' | awk '{print $3}')
gaps_out=$(hyprctl getoption general:gaps_out | grep 'custom type' | awk '{print $3}')




GAPS_FILE="$HOME/.hyprland-gaps.conf"

if [ ! -f "$GAPS_FILE" ]; then
  echo "\$var_gaps_in=0" > "$GAPS_FILE"
  echo "\$var_gaps_out=0" >> "$GAPS_FILE"
fi


function save_gaps() {
  new_width=$(( 1920 - gaps_out * 2 ))
  new_height=$(( 1080 - gaps_out * 2 ))

  echo "\$var_gaps_in=$gaps_in" > "$GAPS_FILE"
  echo "\$var_gaps_out=$gaps_out" >> "$GAPS_FILE"
  echo "\$new_width=$new_width" >> "$GAPS_FILE"
  echo "\$new_height=$new_height" >> "$GAPS_FILE"

  update_mako_config
}

function update_mako_config() {
  local new_margin="${gaps_out},${gaps_out},${gaps_out},${gaps_out}"
  
  sed -i "s/^margin=.*/margin=${new_margin}/" "$HOME/.config/mako/config"
  
  makoctl reload
}

# Function to increase gaps_in
function inc_gaps_in() {
  local step=${1:-1} # Default step to 1 if not provided
  gaps_in=$((gaps_in + step))
  hyprctl keyword general:gaps_in $gaps_in
  save_gaps
}

# Function to decrease gaps_in
function dec_gaps_in() {
  local step=${1:-1} # Default step to 1 if not provided
  if [ "$gaps_in" -gt 0 ]; then
    gaps_in=$((gaps_in - step))
    hyprctl keyword general:gaps_in $gaps_in
    save_gaps
  fi
}

# Function to increase gaps_out
function inc_gaps_out() {
  local step=${1:-1} # Default step to 1 if not provided
  gaps_out=$((gaps_out + step))
  hyprctl keyword general:gaps_out $gaps_out
  save_gaps
}

# Function to decrease gaps_out
function dec_gaps_out() {
  local step=${1:-1} # Default step to 1 if not provided
  if [ "$gaps_out" -gt 0 ]; then
    gaps_out=$((gaps_out - step))
    hyprctl keyword general:gaps_out $gaps_out
    save_gaps
  fi
}

function reset_gaps_in(){
  gaps_in=0
  hyprctl keyword general:gaps_in 0
  save_gaps
}

function reset_gaps_out(){
  gaps_out=0
  hyprctl keyword general:gaps_out 0
  save_gaps
}

# Parse arguments
while [[ $# -gt 0 ]]; do
  case $1 in
  --inc_gaps_in)
    inc_gaps_in "$2"
    shift 2
    ;;
  --dec_gaps_in)
    dec_gaps_in "$2"
    shift 2
    ;;
  --inc_gaps_out)
    inc_gaps_out "$2"
    shift 2
    ;;
  --dec_gaps_out)
    dec_gaps_out "$2"
    shift 2
    ;;
  --reset_gaps_in)
    reset_gaps_in
    shift 1
    ;;
  --reset_gaps_out)
    reset_gaps_out
    shift 1
    ;;
  *)
    printf "Error: Unknown option %s\n" "$1"
    exit 1
    ;;
  esac
done
