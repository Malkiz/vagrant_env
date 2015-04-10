#!/usr/bin/env bash

cd $HOME
export SETUP_FILENAME="bootstrap.sh"
export UNIX_SETUP_FILENAME="unix_$SETUP_FILENAME"
cp /vagrant/$SETUP_FILENAME .
tr -d '\r' < $SETUP_FILENAME > $UNIX_SETUP_FILENAME
chmod +x $UNIX_SETUP_FILENAME
./$UNIX_SETUP_FILENAME
