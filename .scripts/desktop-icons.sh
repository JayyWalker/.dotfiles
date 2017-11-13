#!/bin/bash

if [ $1 == 'off' ] 
then
    defaults write com.apple.finder CreateDesktop false; killall Finder
fi

if [ $1='on' ]
then
    defaults write com.apple.finder CreateDesktop true; killall Finder
fi
