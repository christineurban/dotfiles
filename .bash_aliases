alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# alias fuck='TF_CMD=$(TF_ALIAS=fuck PYTHONIOENCODING=utf-8 TF_SHELL_ALIASES=$(alias) thefuck $(fc -ln -1)) && eval $TF_CMD && history -s $TF_CMD'
alias l='ls -l'
alias la='l -a'
alias v='vim'
alias tf='tail -f'
# Enables alias expansion while using sudo
alias sudo='sudo '

# if command -v ack-grep >/dev/null; then
#   alias ack='ack-grep'
# fi

# if command -v thefuck >/dev/null; then
#     eval "$(thefuck --alias)"
# fi

# function c() { curl -vvv $@; echo; }

alias rimraf='rm -rf node_modules && npm i'
