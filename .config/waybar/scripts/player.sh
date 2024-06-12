#!/bin/bash

# Icons
play_icon="<span></span>"
pause_icon="<span></span>"

# Maximum length of text
max_length=20

# Function to truncate text
truncate_text() {
  local text="$1"
  local max_len="$2"
  if [ ${#text} -gt $max_len ]; then
    echo "${text:0:$max_len}..."
  else
    echo "$text"
  fi
}

# Check if players are found
if ! playerctl -l 2>&1 | grep -qv 'No players found'; then
  exit 0
fi

# Get player metadata
tooltip="Track: $(playerctl metadata xesam:title)\nArtist: $(playerctl metadata xesam:artist)\nAlbum: $(playerctl metadata xesam:album)"
status=$(playerctl status)
metadata=$(playerctl metadata --format '{{ title }} - {{ artist }}')
metadata=$(truncate_text "$metadata" $max_length)

# Output based on player status
if [ -n "$metadata" ]; then
  if [ "$status" = "Playing" ]; then
    metadata="<span color='#9ccfd8'>[ $pause_icon $metadata ]</span>"
  elif [ "$status" = "Paused" ]; then
    metadata="<span color='#f6c177'>[ $play_icon $metadata ]</span>"
  fi
  echo "{\"text\": \"$metadata\", \"tooltip\": \"$tooltip\"}"
else
  echo '{"text": "No music playing"}'
fi
