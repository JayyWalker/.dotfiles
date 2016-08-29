# Ma .dotfiles
alias dotconfig="vim $HOME/.dotfiles"
alias dotfiles="$HOME/.dotfiles"

alias prjconfig="vim $HOME/.dotfiles/.current_project.sh && source $HOME/.zshrc"
alias zshconfig="vim $HOME/.zshrc && source $HOME/.zshrc"
alias viconfig="vim $HOME/.vimrc"
alias tmconfig="vim $HOME/.tmux.conf && source $HOME/.zshrc"
alias dbconfig="vim $HOME/.dotfiles/.dbconfig.sh && source $HOME/.zshrc"
alias aconfig="vim $HOME/.dotfiles/.aliases.sh && source $HOME/.zshrc"
alias econfig="vim $HOME/.dotfiles/.env && source $HOME/.zshrc"
alias sconfig="vim $HOME/.dotfiles/.scripts"
alias rconfig="vim $HOME/.dotfiles/.config/ranger/rc.conf"

# General convenience
alias lsg="ls -xla"
alias :q="exit"
alias mkdir="mkdir -vp" 

## tmux
alias tmat="tmux a -t"
alias tma="tmux attach"
alias tmd="tmux detach"
alias tmn="tmux -2 new -s"

## compression
alias tarpack="tar czvf"
alias tarun="tar xvf"

## ntp
alias updateTime="sudo ntpdate ntp.ubuntu.com"

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
alias prj="$HOME/projects/$CUR_PRJ"

## WORDPRESS specific
alias wpconfig="vim $PRJ/wp-config.php"
alias wpi="wp plugin install"
alias theme="$HOME/projects/${CUR_PRJ}/wp-content/themes/${THEME_NAME}"
alias childtheme="$HOME/projects/${CUR_PRJ}/wp-content/themes/${THEME_NAME}-child"
alias uploads="$HOME/projects/${CUR_PRJ}/wp-content/uploads"
alias plugins="$HOME/projects/${CUR_PRJ}/wp-content/plugins"
alias gigno="vim $HOME/projects/${CUR_PRJ}/.gitignore"

# PHP projects
alias doctrine="$PRJ/vendor/bin/doctrine"
alias ruckus="$PRJ/vendor/bin/ruckus.php"
alias propel="$PRJ/vendor/bin/propel"
alias phinx="php vendor/bin/phinx"
alias magento="$PRJ/bin/magento"

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
alias mydbcli="mycli -u $DBU -p $DBP"

# Server stuff
alias vh="sudo vim /etc/hosts"

## NGINX specific
alias nvconfig=" sudo vim /etc/nginx/sites-available/"
alias ohnozng="vim /var/log/nginx/errors.log"
alias ngrs=" sudo service nginx restart"

## APACHE specific
alias avconfig=" sudo vim /etc/apache2/sites-available/"
alias ohnozap="$HOME/logs"
alias aprs=" sudo service apache2 restart"


# i3wm
alias dualOff="xrandr --output VGA-0 --auto --output VGA-1 --off"
alias dualOn="xrandr --output VGA-1 --auto --right-of VGA-0"
alias i3config="vim ~/.config/i3/config"
