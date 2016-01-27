export PAGER=less
export LESS=R
export LESSOPEN="|lesspipe.sh %s"
export EDITOR='vim'

# keep things I don't want tracked in git in a seperate file
source ~/.sensitive
