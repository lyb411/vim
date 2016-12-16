# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'



idc=${HOSTNAME%%-*}

if [[ "$idc" == "tc" || "$idc" == "db" ]]; then

    PS1='\[\e[01;35m\]\u@\[\e[01;32m\]${HOSTNAME%%.}:\[\e[01;31m\]$PWD\[\e[37;36m\]$\[\e[00m\]'

else

    PS1='\[\e[01;35m\]\u@\[\e[01;33m\]${HOSTNAME%%.}:\[\e[01;31m\]$PWD\[\e[37;36m\]$\[\e[00m\]'

fi

export PATH=$PATH:/usr/local/go/bin

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
