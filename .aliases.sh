# Ma .dotfiles
alias dotconfig="vim $HOME/.dotfiles"
alias dotfiles="$HOME/.dotfiles"

alias prjconfig="vim $HOME/.dotfiles/.current_project.sh && zsh"
alias zshconfig="vim $HOME/.zshrc"
alias viconfig="vim $HOME/.vimrc"
alias dbconfig="vim $HOME/.dotfiles/.dbconfig.sh && zsh"
alias aconfig="vim $HOME/.dotfiles/.aliases.sh"
alias econfig="vim $HOME/.dotfiles/.env"
alias sconfig="vim $HOME/.dotfiles/.scripts"

# General convenience
alias lsg="ls -Xla"
alias :q="exit"

## tmux
alias tmat="tmux a -t"
alias tma="tmux attach"
alias tmd="tmux detach"

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
alias ch777="chmod 777"
alias ch775="chmod 775"
alias 777r="chmod -R 777"
alias 775r="chmod -R 775"

# Moving stuff about 
alias lssh="ls -Xla ~/.ssh"
alias sln="sudo ln -s"
alias mv="mv -i"
alias cp="cp -i"

# Projects
alias derek="mysql -u dev -h derek -p"
alias prj="$HOME/projects/$CUR_PRJ"

## WORDPRESS specific
alias wpconfig="vim $PRJ/wp-config.php"
alias theme="$HOME/projects/${CUR_PRJ}/wp-content/themes/theme"

# PHP projects
alias propel="$PRJ/vendor/bin/propel"

## Npm
alias watcher="npm run watch"
alias build="npm run build"
alias nbgu="sudo npm install && bower install && gulp"
alias nbg="sudo npm install && bower install && grunt build"

# Database stuff
alias derekdump="mysqldump -u dev -h derek -p"
alias dumpdb="mysqldump -u $DBU -p$DBP"
alias derek="mysql -u dev -h derek -p"
alias mydb="mysql -u $DBU -p$DBP"

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
