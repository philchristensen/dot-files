#!/bin/bash

export EDITOR=nano
export VIRTUALENVWRAPPER_PYTHON=/opt/local/bin/python2.7
export WORKON_HOME=/Users/pchristensen/Workspace/.virtual
source /opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

# include .bashrc if it exists
if [ -f "$HOME/.profile" ]; then
  source "$HOME/.profile"
fi

# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
