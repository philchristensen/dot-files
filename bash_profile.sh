#!/bin/bash

export EDITOR=nano
export CLICOLOR=1

export CLOJURE_JAVA=/usr/lib/jvm/java-6-sun/bin/java

export WORKON_HOME=$HOME/Workspace/.virtual
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.6
#export VIRTUALENVWRAPPER_PYTHON=/opt/local/bin/python2.6

source /usr/local/bin/virtualenvwrapper.sh
#source /opt/local/Library/Frameworks/Python.framework/Versions/2.6/bin/virtualenvwrapper.sh

# include .bashrc if it exists
if [ -f "$HOME/.profile" ]; then
  source "$HOME/.profile"
fi

# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
