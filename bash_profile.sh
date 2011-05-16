#!/bin/bash

export EDITOR=nano

export CLOJURE_JAVA=/usr/lib/jvm/java-6-sun/bin/java

export WORKON_HOME=/home/phil/Workspace/.virtual
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.6
source /usr/local/bin/virtualenvwrapper.sh

# include .bashrc if it exists
if [ -f "$HOME/.profile" ]; then
  source "$HOME/.profile"
fi

# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
