#!/bin/bash

# This script will configure the environment to access project directories quicker.
# This sript requires the PRJ environment variable to be set.

clear 

config_file="${HOME}/.dotfiles/.current_project.sh"

if [ "x$PRJ_ENV" == "x" ]; then
    echo PRJ_ENV must be set.

    exit 0;
fi

if [[ $PRJ_ENV = 'wp' ]] ; then
    theme_path="wp-content/themes/${THEME_NAME}"

elif  [[ $PRJ_ENV = 'drupal' ]] ; then
    theme_path="themes/${THEME_NAME}"

else
    echo "There is no option for PRJ_ENV=${PRJ_ENV}."
fi

sed -i "/export THEME_PATH=/c export THEME_PATH='${theme_path}'" $config_file

source $config_file

echo CUR_PRJ    = $CUR_PRJ
echo PRJ_ENV    = $PRJ_ENV
echo THEME_NAME = $THEME_NAME
echo THEM_PATH  = $THEME_PATH
