#!/bin/sh

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# NOTE: Only add PATH and other non-interactive var settings here

export JDK_HOME=/usr/lib/jvm/java-6-sun
export JAVA_HOME=/usr/lib/jvm/java-6-sun
export CLASSPATH=$HOME/Workspace/clojure/clojure.jar
export CLASSPATH=$CLASSPATH:$HOME/Workspace/clojure-contrib/clojure-contrib.jar

export PATH=$HOME/local/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export MANPATH=/opt/local/share/man:$MANPATH
