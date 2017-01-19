source .profile
source .env

setopt hist_ignore_dups hist_expire_dups_first hist_find_no_dups hist_reduce_blanks
export HISTSIZE=1000000
export SAVEHIST=1000000

ZSH_THEME="kolo"
plugins=(git npm)
extra_plugins=(pacman apt-get apt brew bower)
for plugin in $extra_plugins; hash $plugin 2>/dev/null && plugins+=( $plugin )

export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' hosts off
zstyle ':completion:*' ignored-patterns 'todo-indicator|todo.txt'
compdef gpg2=gpg

alias tree="tree -CFhs --du"
alias ls='ls -FG'

export EDITOR=vim
alias vi=vim
# https://twitter.com/rwjblue/status/536637409547808768
alias nombom='npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export GPG_TTY=$(tty)
