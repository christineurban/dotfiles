########################################
# History Settings
########################################

HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

########################################
# PATH Setup
########################################

export PATH=$PATH:$HOME/.bin
export EDITOR=vim
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH="$PATH:~/.local/bin/"
export PATH="/opt/homebrew/bin:$PATH"
export PATH=~/.asdf/shims:$PATH

# coreutils
if [ -d /usr/local/opt/coreutils ]; then
  PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

########################################
# nvm
########################################

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

########################################
# thefuck
########################################

eval $(thefuck --alias)

function fuck () {
  TF_PYTHONIOENCODING=$PYTHONIOENCODING
  export TF_SHELL=zsh
  export TF_ALIAS=fuck
  export TF_HISTORY=$(fc -ln -10)
  export PYTHONIOENCODING=utf-8
  TF_CMD=$(
    thefuck THEFUCK_ARGUMENT_PLACEHOLDER "$@"
  ) && eval "$TF_CMD"
  unset TF_HISTORY
  export PYTHONIOENCODING=$TF_PYTHONIOENCODING
  history -s $TF_CMD
}

# ########################################
# other
# ########################################

# corepack enable

########################################
# Oh My Zsh
########################################

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="simple"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8
# export EDITOR='nvim'
# export ARCHFLAGS="-arch $(uname -m)"

########################################
# Aliases
########################################
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias l='ls -l'
alias la='l -a'
alias v='vim'
alias tf='tail -f'
# Enables alias expansion while using sudo
alias sudo='sudo '

alias rimraf='rm -rf node_modules && npm i'
# alias nuke='rm -rf node_modules && rm package-lock.json && npm i'
alias nuke='cd ~/src/pepdirect/sites && rm -rf node_modules && yarn install && cd ~/src/pepdirect'
# https://www.erikschierboom.com/2020/02/17/cleaning-up-local-git-branches-deleted-on-a-remote/
alias gone='git for-each-ref --format "%(refname:short) %(upstream:track)" refs/heads'
alias aliases='code ~/.zshrc'

# https://stackoverflow.com/questions/9933325/is-there-a-way-of-having-git-show-lines-added-lines-changed-and-lines-removed
# ex: diff <branch-to-compare-with>
# ex; diff master
alias diff="git diff --shortstat"
alias longdiff="git diff --stat"

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

alias runco='cd ~/src/pepdirect/sites && yarn run nx serve checkout-portal-frontend-v2 && cd ~/src/pepdirect'
alias runps='cd ~/src/pepdirect/sites && yarn run nx serve pantryshop && cd ~/src/pepdirect'
alias runb2b='cd ~/src/pepdirect/sites && yarn run nx serve b2b-chicago && cd ~/src/pepdirect'
alias runtz='cd ~/src/pepdirect/sites && yarn run nx serve gatorade-teamzone && cd ~/src/pepdirect'
alias runrs='cd ~/src/pepdirect/sites && yarn run nx serve rockstar-energy && cd ~/src/pepdirect'
alias runadmin='cd ~/src/pepdirect/sites && yarn run nx serve admin-panel && cd ~/src/pepdirect'

alias testco='cd ~/src/pepdirect/sites && yarn nx clear-cache && yarn nx run checkout-portal-frontend-v2:test-coverage --clearCache=true && yarn nx test checkout-portal-frontend-v2 && cd ~/src/pepdirect'
alias testps='cd ~/src/pepdirect/sites && yarn nx clear-cache && yarn nx run pantryshop:test-coverage --clearCache=true && yarn nx test pantryshop && cd ~/src/pepdirect'
alias testb2b='cd ~/src/pepdirect/sites && yarn nx clear-cache && yarn nx run b2b-chicago:test-coverage --clearCache=true && yarn nx test b2b-chicago && cd ~/src/pepdirect'
alias testtz='cd ~/src/pepdirect/sites && yarn nx clear-cache && yarn nx run gatorade-teamzone:test-coverage --clearCache=true && yarn nx test gatorade-teamzone && cd ~/src/pepdirect'
alias testrs='cd ~/src/pepdirect/sites && yarn nx clear-cache && yarn nx run rockstar-energy:test-coverage --clearCache=true && yarn nx test rockstar-energy && cd ~/src/pepdirect'

alias testui='cd ~/src/pepdirect/sites && yarn nx clear-cache && yarn nx run ui:test-coverage --clearCache=true && yarn nx test ui && cd ~/src/pepdirect'
alias testv3='cd ~/src/pepdirect/sites && yarn nx clear-cache && yarn nx run v3:test-coverage --clearCache=true && yarn nx test v3 && cd ~/src/pepdirect'
alias testv2='cd ~/src/pepdirect/sites && yarn nx clear-cache && yarn nx run v2:test-coverage --clearCache=true && yarn nx test v2 && cd ~/src/pepdirect'
alias testadmin='cd ~/src/pepdirect/sites && yarn nx clear-cache && yarn nx run admin-panel:test-coverage --clearCache=true && yarn nx test admin-panel && cd ~/src/pepdirect'
alias testallold='cd ~/src/pepdirect/sites && yarn nx clear-cache && yarn nx -- run-many --target=test-coverage --all --parallel --maxParallel=3 && cd ~/src/pepdirect'

alias runbe='cd ~/src/pepdirect/platform && iex -S mix phx.server'

alias codeps='cd ~/src/pepdirect/sites && yarn nx run pantryshop:gql-codegen && cd ~/src/pepdirect'
alias codeb2b='cd ~/src/pepdirect/sites && yarn nx run b2b-chicago:gql-codegen && cd ~/src/pepdirect'
alias codetz='cd ~/src/pepdirect/sites && yarn nx run gatorade-teamzone:gql-codegen && cd ~/src/pepdirect'
alias coders='cd ~/src/pepdirect/sites && yarn nx run rockstar-energy:gql-codegen && cd ~/src/pepdirect'
alias codeco='cd ~/src/pepdirect/sites && yarn nx run checkout-portal-frontend-v2:gql-codegen && cd ~/src/pepdirect'
alias codecov3='cd ~/src/pepdirect/sites && yarn nx run checkout-portal-frontend-v2:gql-codegen-v3 && cd ~/src/pepdirect'
alias codeadmin='cd ~/src/pepdirect/sites && yarn nx run admin-panel:gql-codegen && cd ~/src/pepdirect'
alias codeall='cd ~/src/pepdirect/sites && yarn nx run pantryshop:gql-codegen && yarn nx run b2b-chicago:gql-codegen && yarn nx run gatorade-teamzone:gql-codegen && yarn nx run sodastream:gql-codegen && yarn nx run rockstar-energy:gql-codegen && yarn nx run checkout-portal-frontend-v2:gql-codegen && yarn nx run checkout-portal-frontend-v2:gql-codegen-v3 && yarn nx run gatorade-microsite:gql-codegen && cd ~/src/pepdirect'
alias codeui='cd ~/src/pepdirect/sites && yarn nx run ui:gql-codegen && cd ~/src/pepdirect'

alias e2e-ps='cd ~/src/pepdirect/sites && yarn run e2e-local-pantryshop && cd ~/src/pepdirect'
alias e2e-b2b='cd ~/src/pepdirect/sites && yarn run e2e-local-pepsicoshop && cd ~/src/pepdirect'
alias e2e-tz='cd ~/src/pepdirect/sites && yarn run e2e-local-teamzone && cd ~/src/pepdirect'
alias e2e-rs='cd ~/src/pepdirect/sites && yarn run e2e-local-rockstar && cd ~/src/pepdirect'

alias e2e-ps-watch='cd ~/src/pepdirect/sites && yarn run e2e-local-pantryshop-watch && cd ~/src/pepdirect'
alias e2e-b2b-watch='cd ~/src/pepdirect/sites && yarn run e2e-local-pepsicoshop-watch && cd ~/src/pepdirect'
alias e2e-tz-watch='cd ~/src/pepdirect/sites && yarn run e2e-local-teamzone-watch && cd ~/src/pepdirect'
alias e2e-rs-watch='cd ~/src/pepdirect/sites && yarn run e2e-local-rockstar-watch && cd ~/src/pepdirect'

alias e2eco-ps='cd ~/src/pepdirect/sites && CYPRESS_WEB=http://secure.pantryshoplocal.com:3001 CYPRESS_WEB_API=http://api.pantryshoplocal.com:4000 yarn run nx run checkout-portal-frontend-v2-e2e:e2e && cd ~/src/pepdirect'
alias e2eco-b2b='cd ~/src/pepdirect/sites && CYPRESS_WEB=http://secure.pepsicoshoplocal.com:3001 CYPRESS_WEB_API=http://api.pepsicoshoplocal.com:4000 yarn run nx run checkout-portal-frontend-v2-e2e:e2e && cd ~/src/pepdirect',
alias e2eco-tz='cd ~/src/pepdirect/sites && CYPRESS_WEB=http://secure.gatoradeteamzonelocal.com:3001 CYPRESS_WEB_API=http://api.gatoradeteamzonelocal.com:4000 yarn run nx run checkout-portal-frontend-v2-e2e:e2e && cd ~/src/pepdirect',
alias e2eco-gcom='cd ~/src/pepdirect/sites && CYPRESS_WEB=http://secure.gatoradeshoplocal.com:3001 CYPRESS_WEB_API=http://api.gatoradeshoplocal.com:4000 yarn run nx run checkout-portal-frontend-v2-e2e:e2e && cd ~/src/pepdirect',
alias e2eco-rse='cd ~/src/pepdirect/sites && CYPRESS_WEB=http://secure.rockstarenergylocal.com:3001 CYPRESS_WEB_API=http://api.rockstarenergylocal.com:4000 yarn run nx run checkout-portal-frontend-v2-e2e:e2e && cd ~/src/pepdirect',

alias e2eco-ps-watch='cd ~/src/pepdirect/sites && CYPRESS_WEB=http://secure.pantryshoplocal.com:3001 CYPRESS_WEB_API=http://api.pantryshoplocal.com:4000 yarn run nx run checkout-portal-frontend-v2-e2e:e2e --watch=true && cd ~/src/pepdirect'
alias e2eco-b2b-watch='cd ~/src/pepdirect/sites && CYPRESS_WEB=http://secure.pepsicoshoplocal.com:3001 CYPRESS_WEB_API=http://api.pepsicoshoplocal.com:4000 yarn run nx run checkout-portal-frontend-v2-e2e:e2e --watch=true && cd ~/src/pepdirect',
alias e2eco-tz-watch='cd ~/src/pepdirect/sites && CYPRESS_WEB=http://secure.gatoradeteamzonelocal.com:3001 CYPRESS_WEB_API=http://api.gatoradeteamzonelocal.com:4000 yarn run nx run checkout-portal-frontend-v2-e2e:e2e --watch=true && cd ~/src/pepdirect',
alias e2eco-gcom-watch='cd ~/src/pepdirect/sites && CYPRESS_WEB=http://secure.gatoradeshoplocal.com:3001 CYPRESS_WEB_API=http://api.gatoradeshoplocal.com:4000 yarn run nx run checkout-portal-frontend-v2-e2e:e2e --watch=true && cd ~/src/pepdirect',
alias e2eco-rse-watch='cd ~/src/pepdirect/sites && CYPRESS_WEB=http://secure.rockstarenergylocal.com:3001 CYPRESS_WEB_API=http://api.rockstarenergylocal.com:4000 yarn run nx run checkout-portal-frontend-v2-e2e:e2e --watch=true && cd ~/src/pepdirect',

alias lintps='cd ~/src/pepdirect/sites && yarn nx run pantryshop:lint --skip-nx-cache --fix --maxWarnings 0 && cd ~/src/pepdirect'
alias lintb2b='cd ~/src/pepdirect/sites && yarn nx run b2b-chicago:lint --skip-nx-cache --fix --maxWarnings 0 && cd ~/src/pepdirect'
alias linttz='cd ~/src/pepdirect/sites && yarn nx run gatorade-teamzone:lint --skip-nx-cache --fix --maxWarnings 0 && cd ~/src/pepdirect'
alias lintrs='cd ~/src/pepdirect/sites && yarn nx run rockstar-energy:lint --skip-nx-cache --fix --maxWarnings 0 && cd ~/src/pepdirect'
alias lintco='cd ~/src/pepdirect/sites && yarn nx run checkout-portal-frontend-v2:lint --skip-nx-cache --fix --maxWarnings 0 && cd ~/src/pepdirect'
alias lintadmin='cd ~/src/pepdirect/sites && yarn nx run admin-panel:lint --skip-nx-cache --fix --maxWarnings 0 && cd ~/src/pepdirect'
alias lintui='cd ~/src/pepdirect/sites && yarn nx run ui:lint --skip-nx-cache --fix --maxWarnings 0 && cd ~/src/pepdirect'
alias lintv3='cd ~/src/pepdirect/sites && yarn nx run v3:lint --skip-nx-cache --fix --maxWarnings 0 && cd ~/src/pepdirect'
alias lintv2='cd ~/src/pepdirect/sites && yarn nx run v2:lint --skip-nx-cache --fix --maxWarnings 0 && cd ~/src/pepdirect'

alias lintall='cd ~/src/pepdirect/sites && yarn nx run-many --all --target=lint --skip-nx-cache --fix --maxWarnings 0 --exclude=pantryshop-e2e,b2b-chicago-e2e,gatorade-teamzone-e2e,rockstar-energy-e2e,checkout-portal-frontend-v2-e2e,admin-panel-e2e,gatorade-microsite,gatorade-microsite-e2e,helpers,shared-constants,shared-types,server && cd ~/src/pepdirect'
alias lintlib='cd ~/src/pepdirect/sites && yarn nx run-many --target=lint --projects=shared-types,helpers,server,ui --skip-nx-cache --fix && cd ~/src/pepdirect'

alias tscps='cd ~/src/pepdirect/sites/apps/pantryshop && npx tsc && cd ~/src/pepdirect'
alias tscb2b='cd ~/src/pepdirect/sites/apps/b2b-chicago && npx tsc && cd ~/src/pepdirect'
alias tsctz='cd ~/src/pepdirect/sites/apps/gatorade-teamzone && npx tsc && cd ~/src/pepdirect'
alias tscrs='cd ~/src/pepdirect/sites/apps/rockstar-energy && npx tsc && cd ~/src/pepdirect'
alias tscco='cd ~/src/pepdirect/sites/apps/checkout-portal-frontend-v2 && npx tsc && cd ~/src/pepdirect'
alias tscadmin='cd ~/src/pepdirect/sites/apps/admin-panel && npx tsc && cd ~/src/pepdirect'
alias tscui='cd ~/src/pepdirect/sites/libs/ui && npx tsc --build tsconfig.json && cd ~/src/pepdirect'
alias tscv3='cd ~/src/pepdirect/sites/libs/v3 && npx tsc --build tsconfig.json && cd ~/src/pepdirect'
alias tscv2='cd ~/src/pepdirect/sites/libs/v2 && npx tsc --build tsconfig.json && cd ~/src/pepdirect'

alias rmnxcache="rm -rf ./node_modules/.cache/nx"
alias empty='git commit --allow-empty -m'

alias sbui='cd ~/src/pepdirect/sites && npx nx storybook ui && cd ~/src/pepdirect'
alias sbv3='cd ~/src/pepdirect/sites && npx nx storybook v3 && cd ~/src/pepdirect'
alias sbco='cd ~/src/pepdirect/sites && npx nx storybook checkout-portal-frontend-v2 && cd ~/src/pepdirect'
alias sbrs='cd ~/src/pepdirect/sites && npx nx storybook rockstar-energy && cd ~/src/pepdirect'

alias buildco='cd ~/src/pepdirect/sites && yarn nx build checkout-portal-frontend-v2 && cd ~/src/pepdirect'
alias buildps='cd ~/src/pepdirect/sites && yarn nx build pantryshop && cd ~/src/pepdirect'
alias buildb2b='cd ~/src/pepdirect/sites && yarn nx build b2b-chicago && cd ~/src/pepdirect'
alias buildtz='cd ~/src/pepdirect/sites && yarn nx build gatorade-teamzone && cd ~/src/pepdirect'
alias buildrs='cd ~/src/pepdirect/sites && yarn nx build rockstar-energy && cd ~/src/pepdirect'
alias buildadmin='cd ~/src/pepdirect/sites && yarn nx build admin-panel && cd ~/src/pepdirect'

alias testallps='testps && lintps && buildps && tscps'
alias testallb2b='testb2b && lintb2b && buildb2b && tscb2b'
alias testalltz='testtz && linttz && buildtz && tsctz'
alias testallrs='testrs && lintrs && buildrs && tscrs'
alias testallui='testui && lintui && tscui'
alias testallv3='testv3 && lintv3 && tscv3'
alias testallv2='testv2 && lintv2 && tscv2'
alias testallco='testallv3 && testallui && testco && lintco && buildco && tscco'
alias testall='testallv3 && testallui && testco && testps && testb2b && testtz && testrs'

alias umbrella='cd ~/src/pepdirect/platform && mix gettext.extract.umbrella && cd -'
alias umbrella2='cd ~/src/pepdirect/platform && mix gettext.merge $PWD/apps/translations/priv/gettext --no-fuzzy && cd -'

alias seed='cd ~/src/pepdirect/platform && mix run ./apps/api_v1/priv/repo/seeds.exs && cd -'
