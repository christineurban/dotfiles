#!/bin/bash

if ! is_mac; then
    alias ls='ls -lF --color=auto'
else
    alias oproxy='open /Applications/Royal\ TSX.app/ & haproxy -d -f ~/.raxvm/haproxy.conf'
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias l='ls -l'
alias la='l -a'
alias v='vim'
alias tf='tail -f'
# Enables alias expansion while using sudo
alias sudo='sudo '

if command -v ack-grep >/dev/null; then
  alias ack='ack-grep'
fi

if command -v thefuck >/dev/null; then
    eval "$(thefuck --alias)"
fi

function c() { curl -vvv $@; echo; }
