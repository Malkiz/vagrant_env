#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y git-core

# get miniflux
cd $HOME
git clone https://github.com/Malkiz/miniflux.git
