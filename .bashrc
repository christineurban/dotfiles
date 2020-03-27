# If not running interactively, don't do anything
[ -z "$PS1" ] && return

. ~/.bash_functions

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if is_mac; then
    # General auto-complete
    if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
    fi

    export CLICOLOR=1
    export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
else
    export TERM=xterm-256color
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi

export EDITOR=vim

PATH=$PATH:$HOME/.bin

# coreutils
if [ -d /usr/local/opt/coreutils/ ]; then
    PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

# python version manager
if [ -d ~/.pyenv ]; then
    export PATH="$HOME/.pyenv/bin:$PATH"
fi
has_bin 'pyenv' && eval "$(pyenv init -)"

# ruby version manager
if [ -d ~/.rvm ]; then
    source "$HOME/.rvm/scripts/rvm"
    PATH=$PATH:$HOME/.rvm/bin
fi

# node version manager
if [ -d ~/.nvm ]; then
    export NVM_DIR="$HOME/.nvm"
    source "$NVM_DIR/nvm.sh"
fi

# prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# other crap
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:/usr/local/opt/go/libexec/bin

export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

shopt -s dotglob
