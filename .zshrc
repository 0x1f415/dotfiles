export ZSH=~/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git brew bower npm)

# $PATH, and other variables that might contain sensitive information, are kept in separate files
source ~/.sensitive

export EDITOR='vim'

source ~/.rvm/scripts/rvm

source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' hosts off

alias tree="tree -CFhs --du"
alias ls='ls -FG'
