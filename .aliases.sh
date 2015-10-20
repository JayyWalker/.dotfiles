# Ma .dotfiles
alias dotconfig="vim $HOME/.dotfiles"
alias dotfiles="$HOME/.dotfiles"

alias prjconfig="vim $HOME/.dotfiles/.current_project.sh && zsh"
alias zshconfig="vim $HOME/.zshrc"
alias viconfig="vim $HOME/.vimrc"
alias aconfig="vim $HOME/.dotfiles/.aliases.sh"
alias econfig="vim $HOME/.dotfiles/.env"
alias sconfig="vim $HOME/.dotfiles/.scripts"

# General convenience
alias tma="tmux attach"
alias lsg="ls -Xla"
alias :q="exit"
alias tmd="tmux detach"

## CHANGE DIRECTORY

# System stuff
alias goodbye="sudo shutdown -P now"
alias cpuinfo="lscpu"
alias meminfo="free -m -l -t"
alias psg="ps aux | grep"

## Package stuff on Ubuntu
alias apt-get="sudo apt-get install"
alias upgrade="sudo apt-get update && sudo apt-get upgrade"
alias purge="sudo apt-get remove --purge"

## Internet connection
alias pingg="ping google.com"
alias myip="curl ifconfig.me"

## PERMISSIONS
alias ownwww="sudo chown -R www-data:www-data"
alias ownme="sudo chown -R $USER:$USER"
alias 777r="chmod -R 777"
alias 775r="chmod -R 775"
alias ch777="chmod 777"
alias ch775="chmod 775"

# Moving stuff about 
alias sln="sudo ln -s"
alias lssh="ls -Xla ~/.ssh"
alias mv="mv -i"
alias cp="cp -i"

# Projects
alias proj="$HOME/projects/$CUR_PRJ"

## Npm
alias watcher="npm run watch"
alias build="npm run build"
alias nbg="sudo npm install && bower install && grunt build"

# WORDPRESS specific
alias wpconfig="vim $PRJ/wp-config.php"
alias theme="$HOME/projects/${CUR_PRJ}/wp-content/themes/theme"

# Server stuff
alias vh="sudo vim /etc/hosts"

## NGINX specific
alias nvconfig=" sudo vim /etc/nginx/sites-available/"
alias ohnozng="vim /var/log/nginx/errors.log"
alias ngrs=" sudo service nginx restart"

## APACHE speficif
alias avconfig=" sudo vim /etc/apache2/sites-available/"
alias ohnozap="$HOME/logs"
alias aprs=" sudo service apache2 restart"
