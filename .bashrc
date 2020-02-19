#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias dc='docker-compose'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/cprimel/.cfg/ --work-tree=/home/cprimel'

function mkcd {
    last=$(eval "echo \$$#")
    if [ ! -n "$last" ]; then
        echo "Enter a directory name"
    elif [ -d $last ]; then
        echo "\`$last' already exists"
    else
        mkdir $@ && cd $last
    fi
}
