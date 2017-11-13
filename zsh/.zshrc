# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="avit"
#ZSH_THEME="random"
ZSH_THEME="nicoulaj"
#ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(bower command-not-found common-aliases compleat copyfile git gitignore git-extras gulp laravel5 last-working-dir lol pj ssh-agent vagrant vi-mode wd web-search yarn zsh-autosuggestions zsh-nvm)

# User configuration

# export MANPATH ="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source $HOME/.dotfiles/.env
source $HOME/.dotfiles/.dbconfig.sh

if [[ -e "$HOME/.phpbrew" ]]; then
    source $HOME/.phpbrew/bashrc
    source $HOME/.phpbrew/completions
fi

# Runs terminal at startup
#[[ $TERM != "screen" ]] && exec tmux

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# SSH configurations
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Enables shortcut to ssh-add
zstyle :omz:plugins:ssh-agent agent-forwarding on

# Quick Navigation

# This uses the plugin 'pj'. Can now open project folder by entering 'pj project-title'
PROJECT_PATHS=(~/Sites ~/projects)
# 'pjo project-title' will open project in $EDITOR

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# alias ohmyzsh="mate ~/.oh-my-zsh"
#source .aliases/source
source $HOME/.dotfiles/.aliases.sh


autoload -U +X bashcompinit && bashcompinit

###-load-nvmrc-if-exists-###
if [[ -e "${HOME}/.nvm" ]]; then 
    autoload -U add-zsh-hook
    load-nvmrc() {
        if [[ -f .nvmrc && -r .nvmrc  ]]; then
            nvm use
        elif [[ $(nvm version) != $(nvm version default)   ]]; then
            echo "Reverting to nvm default version"
            nvm use default
        fi
    }
    add-zsh-hook chpwd load-nvmrc
    load-nvmrc
fi
###-end-load-nvmrc-if-exists-###

set -o vi

# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search
  bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

# Vagrant halt all
if [[ -x "$(command -v vagrant)" ]]; then
    vagrant() {
        if [[ $@ == "halt all"  ]]; then
            command vagrant global-status | grep running | colrm 8 | xargs -L 1 -t vagrant halt
        else
            command vagrant "$@"
        fi
    }
fi

# Load rbenv automatically
if [[ -x "$(command -v rbenv)" ]]; then
    eval "$(rbenv init -)"
fi

# php-version
#source $(brew --prefix php-version)/php-version.sh && php-version 5

