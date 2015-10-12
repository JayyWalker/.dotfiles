# This script will download, setup and install Wordpress with FoundationPress
# It uses wp cli to download and install Wordpress 
# Find wp-cli at www.wp-cli.org




#!/bin/bash
clear

echo What is the title of your project?
	read PROJNAME

echo You are currently in...

pwd

echo

sleep 2

#Figure out how to prevnt the requirement of pressing enter after the y input
echo "Are you currently in the root directory of the project? [y | n]"
echo
read ANSA

	if [[ $ANSA = y ]] ; then 
		echo Moving on...
			sleep 5
	else 

		echo -n "What is the directory where all your projects are?"
			read PROJPATH

			eval cd "$PROJPATH" 

		echo "Okay. Just moving there now"
			mkdir $PROJNAME && cd $PROJNAME && git init
	fi

echo

echo Downloading Wordpress
	sleep 2

	wp core download  

	cp wp-config-sample.php wp-config.php
echo Database name?
	read DBNAME

	sed -i 's/database_name_here/$DBNAME/g' wp-config.php

echo Database user?
	read DBUSER

	sed -i 's/username_here/$DBUSER/g' wp-config.php

echo Database password?
	read DBPASS

	sed -i 's/username_here/$DBPASS/g' wp-config.php

echo Database host? leave blank if localhost
 read DBHOST
 if [[ $DBHOST =  ]]

echo Database prefix? Press ENTER to leave it as default.
	read -p "Database prefix? Press enter for "

echo Project URL? (This will also be used for virtual hosts)
	read PRJURL

echo Would you like to set a url? [y | n]
	read URL_ANSA

	if [[ $URL_ANSA = y ]] ; then
		sed -i 's/'
	fi

	sleep 5

# I'll come to this at some point

echo Installing WordPress
	wp core install 

echo I think Wordpress installed

# This is for when I sort out the if error and if not

# if error then prompt the user and tell 'em to sort their shit out
# else then carry on

echo Downloading FoundationPress and naming it theme
	cd wp-content/themes

	git clone https://github.com/olefredrik/FoundationPress.git theme

	cd theme

echo "Remove .git and .gitignore [y | n]?"
echo
read ANSAGIT
	
	if [[ $ANSAGIT = y ]] ; then
		echo Removing git files

		pwd

		sleep 60
	else 
		echo Moving on...
	fi
	
echo "Running sudo npm install && bower install && build"
	sudo npm install

	bower install

	npm run build

echo Activating FoundationPress
	wp theme activate theme


# Run apache/nginx configuration

echo "Will you use vhosts? [y | n]?"
echo
read ANSAVHOST
	if [[ $ANSAVHOST = y ]] ; then
		echo Okay 

		sleep 30

		else 
			echo OKay
	fi

# Run  
