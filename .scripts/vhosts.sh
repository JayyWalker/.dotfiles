# At the moment, this script is just for setting up nginx vhosts

#listen 80;
#listen [::]:80;

#root /home/reklaw/projects/project_name;
#index index.php index.html index.htm;


# Make site accessible from http://localhost/
#server_name project_url.dev;

echo Current project name is?

env | grep CUR_PRJ

echo 'Is this right [y | n]?' ansa

read ansa

if [[ $ansa = n ]] ; then
	echo Sort it out then run this again

	exit
fi

read -p 'Project vhost URL: ' url

read -p 'Project vhost port:' port

sudo cp ~/.dotfiles/.scripts/nginx-vhost.template /etc/nginx/sites-available/${CUR_PRJ}.dev

cd /etc/nginx/sites-available/

sudo sed -i "s/project_name/$CUR_PRJ/" ${CUR_PRJ}.dev

sudo sed -i "s/project_url/$url/" ${CUR_PRJ}.dev

sudo sed -i "s/port/$port/" ${CUR_PRJ}.dev

#sed -i 's/database_name_here/$DBNAME/g' wp-config.php

vim ${CUR_PRJ}.dev

sudo ln -s /etc/nginx/sites-available/{$CUR_PRJ}.dev /etc/nginx/sites-enabled/{$CUR_PRJ}.dev
