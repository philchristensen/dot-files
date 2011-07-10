#!/bin/bash

# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable aliases
if [ -f ~/.bash_aliases ]; then
    source "$HOME/.bash_aliases"
fi

# enable programmable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    source "/etc/bash_completion"
fi

export VIRTUAL_ENV_DISABLE_PROMPT=1
source $HOME/Workspace/bash-functions/decorate-prompt.sh
source $HOME/Workspace/bash-functions/activate-virtualenv.sh

function pcommand {
	echo -ne "\033]0;${USER}@${HOSTNAME/.bubblehouse.org/}: ${PWD}\007"
	activate_virtualenv
	decorate_prompt
}
export PROMPT_COMMAND=pcommand
