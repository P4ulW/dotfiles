# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

edit() {
	exec fdfind --type file | fzf --bind 'enter:become(nvim {})' --preview 'batcat {} --color=always --style=numbers --theme="Catppuccin Mocha"'
}

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

export PATH="~/tmux:$PATH"
export PATH="~/.local/bin:$PATH"
export PATH="~/.venv3.13/bin/:$PATH"
export PATH="/opt/kitty/kitty.app/bin/:$PATH"
export PATH="~/.cargo/bin/:$PATH"
export EDITOR="nvim"
source $ZSH/oh-my-zsh.sh
source ~/.venv3.13/bin/activate
# alias nvim="/home/paulw/appimages/nvim.appimage"
alias i3lock="python ~/.config/i3/i3pylock.py"
alias fd=fdfind
alias pdfs="~/pdf_search.sh"

alias vim="nvim"

# GIT
alias gs="git status --short"

alias gd="git diff --output-indicator-new=' ' --output-indicator-old=' '"

alias gu="git pull"
alias gp="git push"


alias ga="git add"
alias gc="git commit"

alias gl="git log --all --graph --pretty=format:'%C(magenta)%h %C(white) %an %ar%C(auto) %D%n%s%n'"
alias gb="git branch"

alias gi="git init"
alias gcl"git clone"

alias pip="uv pip"

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
alias gi="git init"
alias gcl"git clone"

alias pip="uv pip"

. "$HOME/.local/bin/env"

alias ls="exa --icons"
alias lsa="exa --icons -a -l"
