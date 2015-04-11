#!/usr/bin/env bash

# Installing dependencies:
sudo apt-get update
sudo apt-get install -y curl
sudo apt-get install -y git git-core
sudo apt-get install -y gcc g++ autoconf automake libtool
sudo apt-get install -y --fix-missing python-software-properties python make
sudo apt-get install -y build-essential libssl-dev
sudo apt-get install -y software-properties-common

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# Installing last node and npm version
sudo apt-add-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs

# Install nvm: node-version manager
# Link: https://www.npmjs.org/package/nvm
sudo npm install -g nvm
sudo export PATH=./node_modules/.bin:$PATH

# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
sudo npm install -g jshint

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo add-apt-repository -y ppa:cassou/emacs
sudo apt-get -qq update
sudo apt-get install -y emacs24-nox emacs24-el emacs24-common-non-dfsg

# Install screen
sudo apt-get install -y screen
