#!/bin/bash

# This script will configure the environment to access project directories quicker.
# This sript requires the PRJ environment variable to be set.

config_file="${HOME}/.dotfiles/.current_project.sh"

case $PRJ_ENV in
    '')
        echo 'PRJ_ENV must be set';
        exit 0;
        ;;
    'wp')
        theme_path="wp-content/themes/${THEME_NAME}"
        ;;
    'drupal')
        theme_path="themes/${THEME_NAME}"
        ;;
    'custom')
        read -p 'Theme path: ' theme
        theme_path="${theme}"
        ;;
    *)
        echo There is no option for current PRJ_ENV
        exit 0
        ;;
esac;

sed -i "/export THEME_PATH=/c export THEME_PATH='${theme_path}'" $config_file

source $config_file

echo CUR_PRJ    = $CUR_PRJ
echo PRJ_ENV    = $PRJ_ENV
echo THEME_NAME = $THEME_NAME
echo THEME_PATH  = $THEME_PATH
