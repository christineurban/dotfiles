#!/bin/bash

. ~/.bash_functions

configure_deps() {
    if is_mac; then
        if ! has_bin 'brew'; then
            /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        fi

        has_bin 'node' || brew install node

        if [ ! -d /usr/local/opt/coreutils ]; then
            brew install coreutils
        fi
    else
        if [ ! -d ~/.pyenv ]; then
            curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
        fi

        if has_bin 'pyenv'; then
            pyenv install -s 2.7.9
            pyenv install -s 3.3.3
            pyenv install -s 3.6.3
            pyenv rehash
            eval "$(pyenv init -)"
        fi
    fi
}

configure_git() {
    if [ ! -e ~/.ssh/id_github ]; then
        echo 'Install ~/.ssh/id_github first'
        exit
    fi
}

configure_npm_packages() {
    echo 'sudo npm install -g ...'
    sudo npm install -g eslint omnivore-io/eslint-config.git gulp prettyjson
}

configure_vim() {
    mkdir -p ~/.vim/tmp
    mkdir -p ~/.vim/bundle
    mkdir -p ~/.vim/colors
    install_vim_vundle
    vim +PluginInstall +qall
}

install_vim_vundle() {
    [ ! -d ~/.vim/bundle/Vundle.vim ] && git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    cd ~/.vim/bundle/Vundle.vim
    git pull
    cd -
}

configure_deps
configure_git
configure_npm_packages
configure_vim
