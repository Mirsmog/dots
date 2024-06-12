#!/usr/bin/env bash

# Retrieve current gap values
gaps_in=$(hyprctl getoption general:gaps_in | grep 'custom type' | awk '{print $3}')
gaps_out=$(hyprctl getoption general:gaps_out | grep 'custom type' | awk '{print $3}')

# Function to increase gaps_in
function inc_gaps_in() {
  local step=${1:-1} # Default step to 1 if not provided
  hyprctl keyword general:gaps_in $((gaps_in + step))
}

# Function to decrease gaps_in
function dec_gaps_in() {
  local step=${1:-1} # Default step to 1 if not provided
  if [ "$gaps_in" -gt 0 ]; then
    hyprctl keyword general:gaps_in $((gaps_in - step))
  fi
}

# Function to increase gaps_out
function inc_gaps_out() {
  local step=${1:-1} # Default step to 1 if not provided
  hyprctl keyword general:gaps_out $((gaps_out + step))
}

# Function to decrease gaps_out
function dec_gaps_out() {
  local step=${1:-1} # Default step to 1 if not provided
  if [ "$gaps_out" -gt 0 ]; then
    hyprctl keyword general:gaps_out $((gaps_out - step))
  fi
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
  *)
    printf "Error: Unknown option %s\n" "\$1"
    exit 1
    ;;
  esac
done
