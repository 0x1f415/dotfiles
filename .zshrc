source .profile
source .env

setopt hist_ignore_dups hist_expire_dups_first hist_find_no_dups hist_reduce_blanks
export HISTSIZE=1000000
export SAVEHIST=1000000

ZSH_THEME="kolo"
plugins=(git brew bower npm)

export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' hosts off

alias tree="tree -CFhs --du"
alias ls='ls -FG'
