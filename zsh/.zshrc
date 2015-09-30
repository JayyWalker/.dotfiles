# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(command-not-found copydir copyfile cp fasd git github gitignore lol pj ssh-agent web-search)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# SSH configurations
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
zstyle :omz:plugins:ssh-agent agent-forwarding on								# Enables shortcut to ssh-add

# Quick Navigation
PROJECT_PATHS=(~/projects)																			# This uses the plugin 'pj'. Can now open project folder by entering 'pj project-title'
																																# 'pjo project-title' will open project in $EDITOR

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# alias ohmyzsh="mate ~/.oh-my-zsh"
#source .aliases/source
alias zshconfig="vim ~/.zshrc"
alias viconfig="vim ~/.vimrc"
alias lsg="ls -Xla"
alias ohnozng="/var/log/nginx/errors.log"
alias ohnozap="~/projects/logs"
alias ngrs=" sudo service nginx restart"
alias aprs=" sudo service apache2 restart"
alias nvconfig=" sudo vim /etc/nginx/sites-available/"
alias avconfig=" sudo vim /etc/apache2/sites-available/"
alias ...="../../"
alias ....="../../../"
alias mydb="mysql -u -p"
alias dumpdb="mysqldump -u -p"
alias apt-get="sudo apt-get install"
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias purge='sudo apt-get remove auto-remove --purge'
alias ping="ping google.com"
alias cpuinfo="lscpu"
alias meminfo='free -m -l -t'
alias psg='ps aux|grep'
alias myip="curl ifconfig.me"
alias tma="tmux attach"
alias :q="exit"
alias vh="sudo vim /etc/hosts"
alias sln="sudo ln -s"
alias lssh="ls -Xla ~/.ssh"
#alias laravel-new="composer create-project laravel/laravel --prefer-dist ." 
alias ownwww="sudo chown -R www-data:www-data"
alias ownme="sudo chown -R $USER:$USER"
alias nbg="sudo npm install && bower install && grunt build"
alias goodbye="sudo shutdown -P now"
alias build="npm run build"
alias watcher="npm run watch"


#export PATH="/.composer/vendor/bin:$PATH"
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/inofo:$INFOPATH"
export PATH=$PATH:~/.composer/vendor/bin

autoload -U +X bashcompinit && bashcompinit
source ~/wp-completion.bash
