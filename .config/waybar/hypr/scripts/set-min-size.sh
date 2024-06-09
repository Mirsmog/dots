WINDOW_ADDR=$(hyprctl activewindow -j | jq .address | tr -d \")
if [[ -n "$1" ]]; then
	hyprctl setprop address:$WINDOW_ADDR minsize 1600 900 lock
else
	hyprctl setprop address:$WINDOW_ADDR maxsize 1024 576 lock
fi
hyprctl dispatch centerwindow
