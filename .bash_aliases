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
# https://www.erikschierboom.com/2020/02/17/cleaning-up-local-git-branches-deleted-on-a-remote/
alias gone='git for-each-ref --format "%(refname:short) %(upstream:track)" refs/heads'

alias caf1='caffeinate -dimst 3600 &'
alias caf2='caffeinate -dimst 7200 &'
alias caf3='caffeinate -dimst 10800 &'
alias caf4='caffeinate -dimst 14400 &'
alias caf5='caffeinate -dimst 18000 &'
alias caf6='caffeinate -dimst 21600 &'
alias caf7='caffeinate -dimst 25200 &'
alias caf8='caffeinate -dimst 28800 &'
alias caf9='caffeinate -dimst 32400 &'
alias caf10='caffeinate -dimst 36000 &'

alias runco='nx serve checkout-portal-frontend-v2'
alias runps='nx serve pantryshop'
alias runb2b='nx serve b2b-chicago'
alias runtz='nx serve gatorade-teamzone'
alias runss='nx serve sodastream'

alias testco='cd ~/src/pepdirect-frontends && nx test checkout-portal-frontend-v2 --skip-nx-cache'
alias testps='cd ~/src/pepdirect-frontends && nx test pantryshop --skip-nx-cache'
alias testb2b='cd ~/src/pepdirect-frontends && nx test b2b-chicago --skip-nx-cache'
alias testtz='cd ~/src/pepdirect-frontends && nx test gatorade-teamzone --skip-nx-cache'
alias testss='cd ~/src/pepdirect-frontends && nx test sodastream --skip-nx-cache'

alias testui='cd ~/src/pepdirect-frontends && nx test ui --skip-nx-cache'
alias testadmin='cd ~/src/pepdirect-frontends && nx test admin-panel --skip-nx-cache'
alias testall='testps -u && testb2b -u && testtz -u && testui && testco'

# alias pullbe='cd ~/src/b2b-main/b2b-api-ex-v1 && git stash && git pull && git stash pop && cd ..'
alias pullbe='cd ~/src/b2b-main/b2b-api-ex-v1 && git co master && git pull && cd ..'
alias runbe='cd ~/src/b2b-main && ./setup-backend.sh'

alias elixir='cd ~/src/b2b-main/b2b-api-ex-v1 && iex -S mix phx.server'
