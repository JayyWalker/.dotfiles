# Ma .dotfiles
alias dotconfig="vim $HOME/.dotfiles"
alias dotfiles="$HOME/.dotfiles"

alias prjconfig="vim $HOME/.dotfiles/.current_project.sh && zsh"
alias zshconfig="vim $HOME/.zshrc"
alias viconfig="vim $HOME/.vimrc"
alias aconfig="vim $HOME/.dotfiles/.aliases.sh"
alias econfig="vim $HOME/.dotfiles/.env"
alias sconfig="vim $HOME/.dotfiles/.scripts"
alias dbconfig="vim $HOME/.dotfiles/.dbconfig.sh && zsh"

# General convenience
alias lsg="ls -Xla"
alias :q="exit"

## tmux
alias tma="tmux attach"
alias tmd="tmux detach"
alias tmat="tmux a -t"

## CHANGE DIRECTORY

# System stuff
alias goodbye="sudo shutdown -P now"
alias cpuinfo="lscpu"
alias meminfo="free -m -l -t"
alias psg="ps aux | grep"

## Package stuff on Ubuntu
#alias apt-get="sudo apt-get install"
alias upgrade="sudo apt-get update && sudo apt-get upgrade"
alias purge="sudo apt-get remove --purge"

## Internet connection
alias pingg="ping google.com"
alias myip="curl ifconfig.me"
alias nts="netstat -tunlp"

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
alias prj="$HOME/projects/$CUR_PRJ"
alias derek="mysql -u dev -h derek -p"


## WORDPRESS specific
alias wpconfig="vim $PRJ/wp-config.php"
alias theme="$HOME/projects/${CUR_PRJ}/wp-content/themes/theme"

# PHP projects
alias propel="$PRJ/vendor/bin/propel"

## Npm
alias watcher="npm run watch"
alias build="npm run build"
alias nbg="sudo npm install && bower install && grunt build"
alias nbgu="sudo npm install && bower install && gulp"

# Database stuff
alias derek="mysql -u dev -h derek -p"
alias derekdump="mysql -u dev -h derek -p"
alias mydb="mysql -u $DBU -p$DBP"
alias dumpdb="mysqldump -u $DBU -p$DBP"

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


# i3wm
alias dualOff="xrandr --output VGA-0 --auto --output VGA-1 --off"
alias dualOn="xrandr --output VGA-1 --auto --right-of VGA-0"
