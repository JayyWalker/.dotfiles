#!/usr/bin/env bash

DOTFILES=${HOME}/.dotfiles

## Submodules
cd ${DOTFILES}
git submodule update --init --recursive

message () {
    echo "Symlinking $1 to $2"
}

## Install NVM
read -p "Install NVM [Y/n]" installNvm
if [[ $installNvm != n ]]; then
    echo "Installing NVM"

    export NVM_DIR="$HOME/.nvm-test" && (
      git clone https://github.com/creationix/nvm.git "$NVM_DIR"
      cd "$NVM_DIR"
      git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
    ) && . "$NVM_DIR/nvm.sh"

    echo "NVM Installed"
fi

## ZSHRC
echo "Symlinking .zshrc to ${HOME}/.zshrc"
message .zshrc $HOME/.zshrc
if [[ -e ${HOME}/.zshrc ]]; then
    rm -f $HOME/.zshrc

    echo "Removed already existing .zshrc"
fi

ln -s ${DOTFILES}/zsh/.zshrc $HOME/.zshrc

## Oh my zsh
message .oh-my-zsh "$HOME/.oh-my-zsh"
if [[ -e "$HOME/.oh-my-zsh" ]]; then
    rm -f $HOME/.oh-my-zsh

    echo "Removed already existing .oh-my-zsh"
fi

ln -s ${DOTFILES}/zsh/.oh-my-zsh $HOME/.oh-my-zsh
