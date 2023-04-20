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
alias nuke='rm -rf node_modules && rm package-lock.json && npm i'
alias nukeyarn='rm -rf node_modules && yarn'
# https://www.erikschierboom.com/2020/02/17/cleaning-up-local-git-branches-deleted-on-a-remote/
alias gone='git for-each-ref --format "%(refname:short) %(upstream:track)" refs/heads'

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

alias runco='nx serve checkout-portal-frontend-v2'
alias runps='nx serve pantryshop'
alias runb2b='nx serve b2b-chicago'
alias runtz='nx serve gatorade-teamzone'
alias runss='nx serve sodastream'
alias runrs='nx serve rockstar-energy'
alias runadmin='nx serve admin-panel'

alias testco='cd ~/src/pepdirect/sites && nx clear-cache && nx test checkout-portal-frontend-v2'
alias testps='cd ~/src/pepdirect/sites && nx clear-cache && nx test pantryshop'
alias testb2b='cd ~/src/pepdirect/sites && nx clear-cache && nx test b2b-chicago'
alias testtz='cd ~/src/pepdirect/sites && nx clear-cache && nx test gatorade-teamzone'
alias testss='cd ~/src/pepdirect/sites && nx clear-cache && nx test sodastream'
alias testrs='cd ~/src/pepdirect/sites && nx clear-cache && nx test rockstar-energy'

alias testui='cd ~/src/pepdirect/sites && nx clear-cache && nx test ui'
alias testadmin='cd ~/src/pepdirect/sites && nx clear-cache && nx test admin-panel'
alias testall='nx clear-cache && nx -- run-many --target=test-coverage --all --parallel --maxParallel=3'

alias runbe='cd ~/src/pepdirect/platform && iex -S mix phx.server'

alias codeps='nx run pantryshop:gql-codegen'
alias codeb2b='nx run b2b-chicago:gql-codegen'
alias codetz='nx run gatorade-teamzone:gql-codegen'
alias codess='nx run sodastream:gql-codegen'
alias coders='nx run rockstar-energy:gql-codegen'
alias codeco='nx run checkout-portal-frontend-v2:gql-codegen'
alias codecov3='nx run checkout-portal-frontend-v2:gql-codegen-v3'
alias codeadmin='nx run admin-panel:gql-codegen'

alias e2eps='nx e2e pantryshop-e2e -- --watch'
alias e2eb2b='nx e2e b2b-chicago-e2e -- --watch'
alias e2etz='nx e2e gatorade-teamzone-e2e -- --watch'
alias e2ess='nx e2e sodastream-e2e -- --watch'

alias e2eco-ps='CYPRESS_WEB=http://secure.pantryshoplocal.com:3001 CYPRESS_WEB_API=http://api.pantryshoplocal.com:4000 npm run nx run checkout-portal-frontend-v2-e2e:e2e'
alias e2eco-b2b='CYPRESS_WEB=http://secure.pepsicoshoplocal.com:3001 CYPRESS_WEB_API=http://api.pepsicoshoplocal.com:4000 npm run nx run checkout-portal-frontend-v2-e2e:e2e',
alias e2eco-tz='CYPRESS_WEB=http://secure.gatoradeteamzonelocal.com:3001 CYPRESS_WEB_API=http://api.gatoradeteamzonelocal.com:4000 npm run nx run checkout-portal-frontend-v2-e2e:e2e',
alias e2eco-ss='CYPRESS_WEB=http://secure.sodastreamprofessionallocal.com:3001 CYPRESS_WEB_API=http://api.sodastreamprofessionallocal.com:4000 npm run nx run checkout-portal-frontend-v2-e2e:e2e',
alias e2eco-gcom='CYPRESS_WEB=http://secure.gatoradeshoplocal.com:3001 CYPRESS_WEB_API=http://api.gatoradeshoplocal.com:4000 npm run nx run checkout-portal-frontend-v2-e2e:e2e',
alias e2eco-rse='CYPRESS_WEB=http://secure.rockstarenergylocal.com:3001 CYPRESS_WEB_API=http://api.rockstarenergylocal.com:4000 npm run nx run checkout-portal-frontend-v2-e2e:e2e',

alias e2eco-ps-watch='CYPRESS_WEB=http://secure.pantryshoplocal.com:3001 CYPRESS_WEB_API=http://api.pantryshoplocal.com:4000 npm run nx run checkout-portal-frontend-v2-e2e:e2e -- --watch'
alias e2eco-b2b-watch='CYPRESS_WEB=http://secure.pepsicoshoplocal.com:3001 CYPRESS_WEB_API=http://api.pepsicoshoplocal.com:4000 npm run nx run checkout-portal-frontend-v2-e2e:e2e -- --watch',
alias e2eco-tz-watch='CYPRESS_WEB=http://secure.gatoradeteamzonelocal.com:3001 CYPRESS_WEB_API=http://api.gatoradeteamzonelocal.com:4000 npm run nx run checkout-portal-frontend-v2-e2e:e2e -- --watch',
alias e2eco-ss-watch='CYPRESS_WEB=http://secure.sodastreamprofessionallocal.com:3001 CYPRESS_WEB_API=http://api.sodastreamprofessionallocal.com:4000 npm run nx run checkout-portal-frontend-v2-e2e:e2e -- --watch',
alias e2eco-gcom-watch='CYPRESS_WEB=http://secure.gatoradeshoplocal.com:3001 CYPRESS_WEB_API=http://api.gatoradeshoplocal.com:4000 npm run nx run checkout-portal-frontend-v2-e2e:e2e -- --watch',
alias e2eco-rse-watch='CYPRESS_WEB=http://secure.rockstarenergylocal.com:3001 CYPRESS_WEB_API=http://api.rockstarenergylocal.com:4000 npm run nx run checkout-portal-frontend-v2-e2e:e2e -- --watch',

alias lintps='nx run pantryshop:lint --skip-nx-cache'
alias lintb2b='nx run b2b-chicago:lint --skip-nx-cache'
alias linttz='nx run gatorade-teamzone:lint --skip-nx-cache'
alias lintss='nx run sodastream:lint --skip-nx-cache'
alias lintss='nx run rockstar-energy:lint --skip-nx-cache'
alias lintco='nx run checkout-portal-frontend-v2:lint --skip-nx-cache'
alias lintadmin='nx run admin-panel:lint --skip-nx-cache'
alias lintall="nx run-many --all --target=lint --skip-nx-cache"
alias lintlib="nx run-many --target=lint --projects=shared-types,helpers,server,ui --skip-nx-cache"

alias tscps='cd ~/src/pepdirect/sites/apps/pantryshop && npx tsc && cd ~/src/pepdirect/sites'
alias tscb2b='cd ~/src/pepdirect/sites/apps/b2b-chicago && npx tsc && cd ~/src/pepdirect/sites'
alias tsctz='cd ~/src/pepdirect/sites/apps/gatorade-teamzone && npx tsc && cd ~/src/pepdirect/sites'
alias tscss='cd ~/src/pepdirect/sites/apps/sodastream && npx tsc && cd ~/src/pepdirect/sites'
alias tscrs='cd ~/src/pepdirect/sites/apps/rockstar-energy && npx tsc && cd ~/src/pepdirect/sites'
alias tscco='cd ~/src/pepdirect/sites/apps/checkout-portal-frontend-v2 && npx tsc && cd ~/src/pepdirect/sites'
alias tscui='cd ~/src/pepdirect/sites/libs/ui && npx tsc && cd ~/src/pepdirect/sites'

alias rmnxcache="rm -rf ./node_modules/.cache/nx"
alias empty='git commit --allow-empty -m'

alias sbui='nx run ui:storybook'
alias sbco='nx run checkout-portal-frontend-v2:storybook'
alias sbrs='nx run rockstar-energy:storybook'
alias sbtp='nx run helpers:storybook'

alias buildco='cd ~/src/pepdirect/sites && nx build checkout-portal-frontend-v2'
