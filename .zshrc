if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(fasd --init auto)"

export EDITOR='nvim'
export VISUAL='nvim'
# Don't remove duplicate inputs
export TERM=xterm-256color
# Golang
# export GOROOT=/usr/local/go/
# export GOBIN=$GOROOT/workspace/go/bin
export GOPATH=~/go
export PATH="${GOROOT}/bin:${PATH}"

# Rust
export PATH="$PATH:~/.cargo/bin"

# Javascript
export PATH="$PATH:~/.node_modules/bin/"
unset npm_config_prefix

# PHP
export PATH="$PATH:~/.config/composer/vendor/bin"

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export ANDROID_HOME=~/Android/Sdk

alias 0="ta 0"
alias al="alsamixer"
alias na="nautilus . &"
alias lg="lazygit"

alias shu="shutdown now"
alias re="source ~/.zshrc"
alias op="nvim ~/.zshrc"
alias mu="ncmpcpp"
alias r="ranger"

alias ins="sudo pacman -S"
alias insy="yaourt -S"
alias rem="sudo pacman -Rns"
alias remy="yaourt -Rns"

alias aux="ps aux |grep"
alias c="clear"
alias f="fg"
alias ka="killall"
alias mk="mkdir"
alias mkp="mkdir -p"
alias up="sudo pacman -Syu"
alias sf="sshfs"
alias sfu="fusermount -u"
alias vm="vifm"
alias vm.="vifm . ."
alias you='youtube-dl'
alias youu='youtube-dl --extract-audio --audio-format mp3'
alias z='fasd_cd -d'
alias th='touch'

alias se='setxkbmap latam'
alias sd='setxkbmap dvp'
alias wifi="nmcli dev wifi"
alias wific="nmcli dev wifi connect"

alias sst="sudo systemctl start"
alias ssp="sudo systemctl stop"

alias startserver="sudo systemctl start httpd php-fpm mysqld"
alias stopserver="sudo systemctl stop httpd php-fpm mysqld"
alias startmysql="/home/bnd/mysql/bin/mysqld_safe"

alias v="vim"
alias n="nvim"
alias nn="~/Downloads/nvim.appimage"
alias del="rm -rf"

alias cdd="cd -"
alias cd.="cd ../"
alias cd..="cd ../../"
alias cd...="cd ../../../"
alias cd....="cd ../../../../"
alias cd.....="cd ../../../../../"

#------------------------------------
# tmux
alias t="tmux"
# alias ta="tmux -2 attach -t"
alias ta="tmux attach -t"
alias tl="tmux list-sessions"
# alias tn="tmux -2 new-session"
alias tn="tmux new-session"
alias tk="tmux kill-session"
alias tka="tmux kill-session -a"
alias tkt="tmux kill-session -t"
alias tks="tmux kill-server"

#------------------------------------
# Git
alias g='git'
alias gi='git init'
alias ga='git add'
alias ga.='git add .'
alias gst='git status'
alias grcc='git rm -r --cached .'

alias gbra='git branch'
alias gbrav='git branch -v'
alias gbravv='git branch -vv'
alias gbraav='git branch -av'
alias gbrad='git branch -d'
alias gbrax='git branch -D'
alias gbram='git branch -m'
alias gbraM='git branch -M'

alias gshob='git show-branch'
alias gshoba='git show-branch -a'

alias gcam='git add . && git commit -m "'
alias gclo='git clone'
alias gche='git checkout'
alias gchem='git checkout master'
alias gcheb='git checkout -b'
alias gchebmu='git checkout -b master upstream/master'
alias gchebmo='git checkout -b master origin/master'
alias gchema='git checkout master'
alias gchep='git checkout --patch'
alias gche-='git checkout --'
alias gche-.='git checkout -- .'

alias grest='git restore'
alias grests.='git restore --staged .'
alias grests='git restore --staged'
alias grest.='git restore .'

alias gres='git reset'
alias gress1='git reset --soft HEAD~1'
alias gresh='git reset --hard'
alias gresH='git reset HEAD'
alias greshH='git reset --hard HEAD'
alias grev='git revert'

alias gcom='git commit'
alias gcomv='git commit --verbose'
alias gcomva='git commit --verbose --all'
alias gcomm='git commit --message'
alias gcomam='git commit --amend --message'
alias gcoma='git commit --amend'
alias gcommi="git commit -m 'Initial commit'"
alias gcf='git commit --amend --reuse-message HEAD'
alias gcF='git commit --verbose --amend'

alias gchep='git cherry-pick'
alias gchepff='git cherry-pick --ff'
alias gchepnc='git cherry-pick --no-commit'
alias gchepa='git cherry-pick --abort'
alias gchepc='git cherry-pick --continue'

alias gsho='git show'
alias gcoml='git-commit-lost'

alias gd='git ls-files'
alias gdc='git ls-files --cached'
alias gdx='git ls-files --deleted'
alias gdm='git ls-files --modified'
alias gdu='git ls-files --other --exclude-standard'
alias gdk='git ls-files --killed'
alias gdi='git status --porcelain --short --ignored | sed -n "s/^!! //p"'

alias gfet='git fetch'
alias gfeto='git fetch origin'
alias gfetu='git fetch upstream'
alias gfetum='git fetch upstream master'
alias gpulr='git pull --rebase'
alias gpul='git pull'
alias gpulo='git pull origin'
alias gpulor='git pull origin --rebase'
alias gpulur='git pull upstream --rebase'
alias gpulom='git pull origin master'
alias gpulomr='git pull origin master --rebase'
alias gpulumr='git pull upstream master --rebase'

alias gg='git grep'
alias ggi='git grep --ignore-case'
alias ggl='git grep --files-with-matches'
alias ggL='git grep --files-without-matches'
alias ggv='git grep --invert-match'
alias ggw='git grep --word-regexp'

alias gadd='git add'
alias gaddp='git add --patch'
alias gaddu='git add --update'

alias gdif='git diff'
alias gdifns='git diff --name-status'
alias gdifs='git diff --stat'
alias gdifnc='git diff --no-ext-diff --cached'
alias gdifncw='git diff --no-ext-diff --cached --word-diff'

# show files modified on commit
alias gdiftf='git diff-tree --no-commit-id --name-only -r'

alias grm='git rm'
alias grmrc='git rm -r --cached'
alias grmrfc='git rm -rf --cached'

alias gl='git log'
alias glm='git log --topo-order --pretty=format:"${_git_log_medium_format}"'
alias gls='git log --topo-order --stat --pretty=format:"${_git_log_medium_format}"'
alias gld='git log --topo-order --stat --patch --full-diff --pretty=format:"${_git_log_medium_format}"'
alias glo='git log --topo-order --pretty=format:"${_git_log_oneline_format}"'
alias glg='git log --topo-order --all --graph --pretty=format:"${_git_log_oneline_format}"'
alias glb='git log --topo-order --pretty=format:"${_git_log_brief_format}"'
alias glc='git shortlog --summary --numbered'
alias glt='git log --oneline --decorate --source --pretty=format:"%Cblue %h %Cgreen %ar %Cblue %an %C(yellow) %d %Creset %s" --all --graph'

alias gmer='git merge'
alias gmernc='git merge --no-commit'
alias gmernf='git merge --no-ff'
alias gmera='git merge --abort'

alias gmert='git mergetool'

alias gpus='git push'
alias gpuso='git push origin'
alias gpusof='git push origin --force'
alias gpusso='git push --set-upstream origin $(git-branch-current)'
alias gpussof='git push --set-upstream origin $(git-branch-current) --force'
alias gpusom='git push origin master'
alias gpushm='git push heroku master'
alias gpusf='git push --force'
alias gpusa='git push --all'
alias gpusA='git push --all && git push --tags'
alias gpust='git push --tags'
alias gpusc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'
alias gpusp='git pull origin "$(git-branch-current 2> /dev/null)" && git push origin "$(git-branch-current 2> /dev/null)"'

alias greb='git rebase'
alias grebm='git rebase master'
alias greba='git rebase --abort'
alias grebc='git rebase --continue'
alias grebi='git rebase --interactive'

alias grem='git remote'
alias gremv='git remote -v'
alias greml='git remote --verbose'
alias grema='git remote add'
alias gremao='git remote add origin'
alias gremau='git remote add upstream'
alias gremx='git remote rm'
alias gremr='git remote rename'
alias gremro='git remote rename origin'
alias gremru='git remote rename upstream'
alias gremrou='git remote rename origin upstream'
alias gremruo='git remote rename upstream origin'
alias gremu='git remote update'
alias gremp='git remote prune'
alias gremb='git-hub-browse'

# Stash (s)
alias gsta='git stash'
alias gstaa='git stash apply'
alias gstad='git stash drop'
alias gstaX='git-stash-clear-interactive'
alias gstal='git stash list'
alias gstaL='git-stash-dropped'
alias gstasps='git stash show --patch --stat'
alias gstap='git stash pop'
alias gstar='git-stash-recover'
alias gstas='git stash save --include-untracked'
alias gstaS='git stash save --patch --no-keep-index'
alias gstaw='git stash save --include-untracked --keep-index'

# Submodule (S)
alias gS='git submodule'
alias gSa='git submodule add'
alias gSf='git submodule foreach'
alias gSi='git submodule init'
alias gSI='git submodule update --init --recursive'
alias gSl='git submodule status'
alias gSm='git-submodule-move'
alias gSs='git submodule sync'
alias gSu='git submodule foreach git pull origin master'
alias gSx='git-submodule-remove'

alias gws='git status --ignore-submodules=${_git_status_ignore_submodules} --short'
alias gwS='git status --ignore-submodules=${_git_status_ignore_submodules}'
alias gwc='git clean -n'
alias gwC='git clean -f'
alias gwx='git rm -r'
alias gwX='git rm -rf'

alias gCl='git status | sed -n "s/^.*both [a-z]*ed: *//p"'
alias gCa='git add $(gCl)'
alias gCe='git mergetool $(gCl)'
alias gCo='git checkout --ours --'
alias gCO='gCo $(gCl)'
alias gCt='git checkout --theirs --'
alias gCT='gCt $(gCl)'

#------------------------------------
# Python
export PATH="$PATH:~/Library/Python/3.7/bin"
alias python='python3'
alias pip='pip3'
alias p='python'
alias pm="python manage.py"
alias pmr="python manage.py runserver"

alias e='elixir'
alias j='julia'

#------------------------------------
# Haskell
alias rh='runhaskell'

#------------------------------------
# Javascript

alias tagjs="find . -type f -iregex '.*\.js$' -not -path './node_modules/*' -exec jsctags {} -f \; | sed '/^$/d' | LANG=C sort > tags"
alias esi='eslint --init'
alias wr='web-ext run'
alias wb='web-ext buid'
alias ws='web-ext sign'
alias ww="web-ext run --firefox='/home/bnd/Downloads/firefox'"

alias cra="create-react-app"
alias crna="create-react-native-app"

alias ys='yarn start'
alias ya='yarn add'
alias yi='yarn install'

alias no="node"
alias ad="adonis"

alias ns="npm start"
alias nins="npm install"
alias ninss="npm install --save"
alias ninssd="npm install --save-dev"
alias ni="npm init"
alias nc="npm ci"
alias nr="npm run"
alias nrd="npm run dev"
alias nrt="npm run test"
alias nrti="npm run typings install"

alias bs='browser-sync'
alias bss='browser-sync start --server'
alias bssf='browser-sync start --server --files="*.*"'
alias bssro="browser-sync start --https  --server 'build' --files 'build' --watch --no-open --port"
alias bssro9="browser-sync start --https  --server 'build' --files 'build' --watch --no-open --port 9999"
alias bspay="browser-sync start --https  --server 'build' --files 'build' --watch --no-open --port 3002"

#------------------------------------
# Laravel

# composer create-project laravel/laravel {directory} "~5.0.0" --prefer-dist
alias lara="composer create-project laravel/laravel"
alias artis="php artisan serve"
alias arti="php artisan"
alias artids="php artisan db:seed"
alias artimi="php artisan migrate"
alias artirl="php artisan route:list"
alias artimco="php artisan make:controller"
alias artimmo="php artisan make:model"
alias artimmi="php artisan make:migration"
alias artimse="php artisan make:seeder"

alias cda='composer dump-autoload'
#------------------------------------
# Crystal
alias cr='crystal'

#------------------------------------
# Heroku
alias h='heroku'
alias hs='heroku status'
alias hh='heroku help'
alias hl='heroku login'
alias ho='heroku open'
alias hr='heroku run'
alias hrs='heroku restart'

# heroku postgresql
alias hpg='heroku pg'

alias hpgba='pg:backups'
alias hpgbacan='pg:backups:cancel'
alias hpgbacap='pg:backups:capture'
alias hpgbade='pg:backups:delete'
alias hpgbado= 'pg:backups:download'
alias hpgbai= 'pg:backups:info'
alias hpgbar= 'pg:backups:restore'
alias hpgbas= 'pg:backups:schedule'
alias hpgbass= 'pg:backups:schedules'
alias hpgbaus= 'pg:backups:unschedule'
alias hpgbau= 'pg:backups:url'

alias hpgbl='pg:bloat'
alias hpgbl='pg:blocking'
alias hpgcon='pg:connection-pooling'
alias hpgcop='pg:copy'
alias hpgcr='pg:credentials'
alias hpgdi='pg:diagnose'
alias hpgi='heroku pg:info'
alias hpgk='heroku pg:kill'
alias hpgka='heroku pg:killall'
alias hpgli='heroku pg:links'
alias hpgl='heroku pg:locks'
alias hpgm='heroku pg:maintenance'
alias hpgou='heroku pg:outliers'
alias hpgpr='heroku pg:promote'
alias hpgp='heroku pg:ps'
alias hpgps='heroku pg:psql'
alias hpgpl='heroku pg:pull'
alias hpgpu='heroku pg:push'
alias hpgrp='heroku pg:repoint'
alias hpgrs='heroku pg:reset'
alias hpgs='heroku pg:settings'
alias hpgun='heroku pg:unfollow'
alias hpgup='heroku pg:upgrade'
alias hpgv='heroku pg:vacuum-stats'
alias hpgw='heroku pg:wait'

alias ha='heroku addons'
alias haa='heroku addons:add'
alias hads='heroku addons:destroy'
alias hac='heroku addons:create'
alias hadc='heroku addons:docs'

alias hcg='heroku config'
alias hcgg='heroku config:get'
alias hcg='heroku config'
alias hct='heroku container'
alias hctin='heroku container:login'
alias hctut='heroku container:logout'
alias hctpl='heroku container:pull'
alias hctph='heroku container:push'
alias hctre='heroku container:release'
alias hctrm='heroku container:rm'
alias hctru='heroku container:run'

alias hcr='heroku create'

alias hlc='heroku local'
alias hlcw='heroku local web'

alias hp='heroku ps'
alias hps='heroku ps:scale'

alias hlg='heroku logs'
alias hlgt='heroku logs --tail'

#------------------------------------
# Ruby
# eval "$(rbenv init -)"
# export RUBYOPT='-W:no-deprecated -W:no-experimental'
# export PATH=$PATH:$(ruby -e 'print Gem.user_dir')/bin

alias rvm5='rvm use 2.6.5'
alias bi="bundle install"
alias be="bundle exec"
alias bers="bundle exec rspec"
alias bera="bundle exec rackup"

alias ra="rails"
alias rac='rails console'
alias radb="rails dbconsole"
alias radc="rails db:create"
alias radd="rails db:drop"
alias rade="rails destroy"
alias radec="rails destroy controller"
alias rades="rails destroy scaffold"
alias rademi="rails destroy migration"
alias rademo="rails destroy model"
alias radmi="rails db:migrate"
alias radmis="rails db:migrate:status"
alias radmiu="rails db:migrate:up"
alias radmid="rails db:migrate:down"
alias radmir="rails db:migrate:redo"
alias radmtc="rails db:migrate db:test:clone"
alias radr="rails db:rollback"
alias radrs="rails db:reset"
alias rads="rails db:seed"
alias radtc="rails db:test:clone"
alias radtp="rails db:test:prepare"
alias rag="rails generate"
alias ragc="rails generate controller"
alias ragmi="rails generate migration"
alias ragmo="rails generate model"
alias rags="rails generate scaffold"
alias ralc="rails log:clear"
alias ram="rails middleware"
alias ran="rails new"
alias rano="rails notes"
alias rap="rails plugin"
alias rar="rails routes"
alias rarg="rails routes | grep"
alias raru="rails runner"
alias ras="rails server"
alias rasd="rails server --debugger"
alias rasp="rails server --port"
alias rasts="rails stats"
alias rat="rails test"

# ------------------------------------
# Docker alias and function
# ------------------------------------
alias dcu="docker-compose up"
alias dcub="docker-compose up --build"
alias dcd="docker-compose down"

alias d="docker"
alias dr="docker run -it --name"
alias drd="docker run -d"
alias dm="docker commit"

# Get latest container ID
alias dl="docker ps -l -q"

alias db="docker build -t"

# Get container process
alias dp="docker ps"

alias dpp="docker port"

alias dsp="docker stop"
alias dst="docker start"

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"
alias din="docker inspect"
alias dri="docker rmi"
alias drm="docker rm"
# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias de="docker exec -it"
alias da="docker attach"
# Stop all containers
dstop() { docker stop $(docker ps -a -q); }

# Remove all containers
drma() { docker rm $(docker ps -a -q); }

# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove all images
dria() { docker rmi $(docker images -q); }

# Dockerfile build, e.g., $dbu tcnksm/test
dbu() { docker build -t=$1 .; }

dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
