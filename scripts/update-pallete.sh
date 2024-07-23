#!/bin/bash

default_color="#4a249d"

if [ -z "$1" ]; then
    color="$default_color"
else
    color="$1"
fi

color_no_hash="${color:1}"  # Remove the '#' from the color

sed -i "s/background-color: .*/background-color: $color;/g" ~/.config/rofi/config.rasi

sed -i "s/border-color=.*/border-color=$color/g" ~/.config/mako/config

sed -i "s/col.active_border = .*/col.active_border = rgb($color_no_hash)/g" ~/.config/hypr/config/general.conf

sed -i "s/@define-color accent .*/@define-color accent $color;/g" ~/.config/waybar/themes/custom.css

echo "Colors updated successfully!"
