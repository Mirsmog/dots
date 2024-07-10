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

alias vi="lvim"
alias pai="sudo pacman -Sy"
alias pau="sudo pacman -Syu"
alias par="sudo pacman -Rs"
alias ff="fastfetch"
alias ya="yarn"
alias hyprshot="$HOME/.local/bin/hyprshot"
alias cls="clear"
alias uplvim="sh ~/dots/scripts/update-lvim.sh"

alias l='exa -alF --icons --color=always --group-directories-first'
alias la='exa -a --icons --color=always --group-directories-first'
alias ll='exa -lF --icons --color=always --group-directories-first'
alias ls='exa -lF --icons --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

bindkey -v

source <(fzf --zsh)
eval "$(zoxide init zsh --cmd cd)"
