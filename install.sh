#!/usr/bin/env bash

DOTFILES=${HOME}/.dotfiles

## Submodules
cd ${DOTFILES}
git submodule update --init --recursive

message () {
    echo "Symlinking $1 to $2"
}

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
