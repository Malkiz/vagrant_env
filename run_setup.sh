#!/usr/bin/env bash

cd $HOME
tr -d '\r' < /vagrant/setup.sh > setup.sh
chmod +x setup.sh
export SETUP_FILENAME="bootstrap.sh"
./setup.sh
export SETUP_FILENAME="dotfiles.sh"
./setup.sh
export SETUP_FILENAME="rss.sh"
./setup.sh
