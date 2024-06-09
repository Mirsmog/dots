export EDITOR=nvim
export VISUAL=nvim
export HYPRSHOT_DIR=$HOME/Pictures/Screenshots
export WALLPAPERS_DIR=$HOME/Pictures/Wallpapers
export XDG_CONFIG_HOME=$HOME/.config

export PATH=$PATH:$HOME/.local/bin/:$HOME/.cargo/bin
if [[ "$(tty)" = "/dev/tty1" ]]; then
  exec Hyprland &> /dev/null
fi
