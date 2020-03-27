#!/bin/bash

if ! is_mac; then
    alias ls='ls -lF --color=auto'
else
    # alias oproxy='open /Applications/Royal\ TSX.app/ & ~/.raxvm/omniprox-mac.sh'
    alias oproxy='~/.raxvm/omniprox.bin'
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias fuck='TF_CMD=$(TF_ALIAS=fuck PYTHONIOENCODING=utf-8 TF_SHELL_ALIASES=$(alias) thefuck $(fc -ln -1)) && eval $TF_CMD && history -s $TF_CMD'
alias l='ls -l'
alias la='l -a'
alias v='vim'
alias tf='tail -f'
# Enables alias expansion while using sudo
alias sudo='sudo '
alias portf='ssh -L 15672:localhost:15672 -L 6379:localhost:6379 -L 9200:localhost:9200 -L 9300:vpc-v-ca1-xrfpcnsmtonvbmeb6vjanqilcu.us-west-1.es.amazonaws.com:80 -L 26379:localhost:26379 -L 5672:localhost:5672 -R 3306:localhost:3306 -R 9500:localhost:9500 -L 10389:localhost:389 -R 9601:localhost:9601 dev'
alias giganto='cd ~/go/src/github.com/omnivore/giganto'

if command -v ack-grep >/dev/null; then
  alias ack='ack-grep'
fi

if command -v thefuck >/dev/null; then
    eval "$(thefuck --alias)"
fi

function c() { curl -vvv $@; echo; }
