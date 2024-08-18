export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

plugins=( 
    git
    node
    sudo
    npm
    dnf
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias vi="nvim"
alias pai="sudo pacman -Sy"
alias pau="sudo pacman -Syu"
alias par="sudo pacman -Rs"
alias ff="fastfetch"
alias wllr="cd ~/Public/wallter && ya start"
alias ya="yarn"
alias hyprshot="$HOME/.local/bin/hyprshot"
alias neovide='~/.cargo/bin/neovide'

alias cava='kitty @ set-spacing padding=0 margin=0 && kitty @ set-font-size 1 && cava && exit'
alias cls="clear"
alias glvim="sh ~/dots/scripts/update-lvim.sh"
alias gvim="sh ~/dots/scripts/update-nvim.sh"
alias livew="mpvpaper -o \"no-audio --loop-playlist\" DVI-D-1 ~/Videos/Wallpapers/main.mp4"
alias kif="vi ~/.config/kitty/kitty.conf"

alias l='exa -alF --icons --color=always --group-directories-first'
alias la='exa -a --icons --color=always --group-directories-first'
alias ll='exa -lF --icons --color=always --group-directories-first'
alias ls='exa -lF --icons --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

bindkey -v

source <(fzf --zsh)
eval "$(zoxide init zsh --cmd cd)"

export PATH=$PATH:/home/zwine/.spicetify
