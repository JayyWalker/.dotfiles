# Ma .dotfiles
alias dotconfig="vim $HOME/.dotfiles"
alias dotfiles="$HOME/.dotfiles"

# TODO Writing the prjconfig as a function will be much more flexible
alias prjconfig="vim $HOME/.dotfiles/.current_project.sh && source $HOME/.zshrc && bash $HOME/.dotfiles/.scripts/config_project.sh && source $HOME/.zshrc"
alias zshconfig="vim $HOME/.zshrc && source $HOME/.zshrc"
alias viconfig="vim $HOME/.vimrc"
alias tmconfig="vim $HOME/.tmux.conf && source $HOME/.zshrc"
alias dbconfig="vim $HOME/.dotfiles/.dbconfig.sh && source $HOME/.zshrc"
alias aconfig="vim $HOME/.dotfiles/.aliases.sh && source $HOME/.zshrc"
alias econfig="vim $HOME/.dotfiles/.env && source $HOME/.zshrc"
alias sconfig="vim $HOME/.dotfiles/.scripts"
alias rconfig="vim $HOME/.dotfiles/.config/ranger/rc.conf"

# General convenience
#alias lsg="ls -xla --group-directories-first"
alias lsg="ls -xla"
alias :q="exit"
alias mkdir="mkdir -vp" 
alias mk="mkdir"
alias read="cat"
alias df="df -h"

## tmux
alias tmat="tmux a -t"
alias tma="tmux attach"
alias tmd="tmux detach"
alias tmn="tmux -2 new -s"
alias tms="tmux switch -t"

## compression
alias tarpack="tar czvf"
alias tarun="tar xvf"

## ntp
alias updateTime="sudo ntpdate ntp.ubuntu.com"

## Silver Search ag
alias ag="ag --path-to-ignore ~/.agignore"

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
alias mewww="sudo chown -R $USER:www-data"
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
alias theme="$HOME/projects/${CUR_PRJ}/${THEME_PATH}"
alias gigno="vim $HOME/projects/${CUR_PRJ}/.gitignore"

## WORDPRESS specific
alias wpconfig="vim $PRJ/wp-config.php"
alias wpi="wp plugin install"
alias childtheme="$HOME/projects/${CUR_PRJ}/wp-content/themes/${THEME_NAME}-child"
alias uploads="$HOME/projects/${CUR_PRJ}/wp-content/uploads"
alias plugins="$HOME/projects/${CUR_PRJ}/wp-content/plugins"

## LARAVEL specific
alias art="php ./artisan"
alias vc="php ./artisan view:clear"
alias cc="php ./artisan cache:clear"

## PHP
alias phpconfig="vim /etc/php/7.0/fpm/php.ini"

### projects
alias doctrine="vendor/bin/doctrine"
alias ruckus="$PRJ/vendor/bin/ruckus.php"
alias propel="$PRJ/vendor/bin/propel"
alias phinx="vendor/bin/phinx"
alias magento="bin/magento"
alias drush="$PRJ/vendor/bin/drush"
alias sylius="./bin/console"
alias sail='bash vendor/bin/sail'

alias phpunit="vendor/bin/phpunit"

### valet
alias php71="phpv php@7.1"
alias php72="phpv php@7.2"
alias php73="phpv php"

## Npm
alias watcher="npm run watch"
alias build="npm run build"
alias npmb="npm install && bower install"
alias nbgu="npm install && bower install && gulp"
alias nbg="npm install && bower install && grunt build"
alias gubw="gulp build && gulp watch"
#alias grunt="./node_modules/.bin/grunt"
alias browserSync="./node_modules/.bin/browser-sync"
alias hygen="./node_modules/.bin/hygen"
alias gatsby="./node_modules/.bin/gatsby"

# Database stuff
alias derekdump="mysqldump -u dev -h derek -p"
alias dumpdb="mysqldump -u $DBU -p$DBP"
alias derek="mysql -u dev -h derek -p"
alias mydb="mysql -u $DBU -p$DBP"
alias mydbcli="mycli -u $DBU -p $DBP"
alias derekcli="mycli -u dev -h derek -p $DEREKP"

# Server stuff
alias vhs="sudo vim /etc/hosts"

## NGINX specific
alias nvconfig="sudo vim /etc/nginx/sites-available/"
alias ohnozng="vim /var/log/nginx/errors.log"
alias ngrs="sudo service nginx restart"

## APACHE specific
alias avconfig="sudo vim /etc/apache2/sites-available/"
alias ohnozap="$HOME/logs"
alias aprs="sudo service apache2 restart"

# i3wm
alias dualOff="xrandr --output VGA-0 --auto --output VGA-1 --off"
alias dualOn="xrandr --output VGA-1 --auto --right-of VGA-0"
alias i3config="vim ~/.config/i3/config"

# git
alias gs="git stash"
alias glg="git lg"
alias glgdo="gi lg --date-order"


#Vagrant
#alias vu="v up"
#alias vssh="$(v ssh $1)"
#alias vh="v halt"
#alias vp="v provision"
#alias vgs="vagrant global-status"


#aws
alias cdklocal="./node_modules/.bin/cdklocal"
alias cdk="./node_modules/.bin/cdk"
