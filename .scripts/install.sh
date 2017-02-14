#!/bin/bash

TEXTCOLOR='\033[1;34m'

printf "${TEXTCOLOR}Copied .agignore to $HOME/.agignore\n"
ln -s $HOME/.dotfiles/.agignore $HOME/.agignore

printf "${TEXTCOLOR}Copied .config $HOME/.config\n"
ln -s $HOME/.dotfiles/.config $HOME/.config

printf "${TEXTCOLOR}Copied .ctags $HOME/.ctags\n"
ln -s $HOME/.dotfiles/.ctags $HOME/.ctags

printf "${TEXTCOLOR}Copied .oh-my-zsh $HOME/.oh-my-zsh\n"
ln -s $HOME/.dotfiles/zsh/.oh-my-zsh $HOME/.oh-my-zsh

printf "${TEXTCOLOR}Copied .tmux.conf $HOME/.tmux.conf\n"
ln -s $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf

printf "${TEXTCOLOR}Copied .vim $HOME/.vim\n"
ln -s $HOME/.dotfiles/vim/.vim $HOME/.vim

printf "${TEXTCOLOR}Copied .vimrc $HOME/.vimrc\n"
ln -s $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc

printf "${TEXTCOLOR}Copied .zshrc $HOME/.zshrc\n"
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc

printf "${TEXTCOLOR}Copied vhosts script to /usr/local/bin/vhosts\n"
sudo ln -s $HOME/.dotfiles/.scripts/vhosts /usr/local/bin/vhosts

printf "${TEXTCOLOR}Cloning lukechilds/zsh-nvm to ~/.oh-my-zsh/custom/plugins/zsh-nvm\n"
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

