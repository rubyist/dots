#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTSIZE= HISTFILESIZE=

PS1='[\u@\h \W]\$ '
export PS1='\[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput sgr0)\]\[\033[0;32m\]$(basename "$(pwd)")\[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput sgr0)\]\[\033[1;32m\]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[0;35m\] ⦔\[$(tput sgr0)\]\[\033[38;5;15m\] '

if [ -f $HOME/.asdf/asdf.sh ]; then
  . $HOME/.asdf/asdf.sh
  . $HOME/.asdf/completions/asdf.bash
fi

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/apps
export PATH=$PATH:$HOME/neovim/bin

cdl () { coredumpctl debug $(coredumpctl | tail -1 | awk '{print $5}'); }

alias ls='ls --color=auto'
[ -f '/usr/bin/lsd' ] && alias ls=lsd

alias ch="cd ~/src/personal/Hyprland"
alias dco="docker compose"
alias fresh="sudo pacman -Sy; pacman -Qu"
alias gst="git status"
alias im="iex -S mix"
alias nh="nvim ~/.config/hypr/hyprland.conf"
alias piperestart="systemctl --user restart pipewire"
alias s="kitty +kitten ssh"
alias upper="sudo pacman -Syu"
alias vim="nvim"
alias yaml2json="python3 -c 'import sys, yaml, json; y=yaml.safe_load(sys.stdin.read()); print(json.dumps(y))'"

[ -f $HOME/.config/bash/work ] && . $HOME/.config/bash/work
