#!/usr/bin/env bash

sudo apt-get install -y git-core
sudo apt-get install -y curl

# install nvm v0.24.1
sudo apt-get install -y build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.1/install.sh | bash

# Load nvm and install latest production node
source $HOME/.nvm/nvm.sh
nvm install v0.12.2
nvm use v0.12.2

# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:cassou/emacs
sudo apt-get -qq update
sudo apt-get install -y emacs24-nox emacs24-el emacs24-common-non-dfsg

