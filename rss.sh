#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y git-core
sudo apt-get install -y php5-cli php5-sqlite php5-xmlrpc
sudo apt-get install -y apache2

# get miniflux
cd $HOME
git clone https://github.com/Malkiz/miniflux.git

# direct apache default location to miniflux
export APACHE_SITE_FILE="/etc/apache2/sites-available/default"
sudo mv $APACHE_SITE_FILE tmp_apache
export TMP=$(pwd|sed 's/\//\\\//g')
export TMP2="s/\/var\/www/$TMP\/miniflux/g"
sudo sed $TMP2 tmp_apache > tmp_apache_2
sudo mv tmp_apache_2 $APACHE_SITE_FILE

# restart apache to apply changes
sudo /etc/init.d/apache2 restart
