#!/usr/bin/env bash

cd $HOME
cp /vagrant/setup.sh .
chmod +x setup.sh
export SETUP_FILENAME="bootstrap.sh"
./setup.sh
export SETUP_FILENAME="dotfiles.sh"
./setup.sh
