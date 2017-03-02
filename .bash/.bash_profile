#!/bin/bash

if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

if [ -f ~/.bash_path ]; then
. ~/.bash_path
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export XDG_CONFIG_DIRS='~/.config'

eval `dircolors ~/.dir_colors/dircolors.ansi-universal`
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# set EDITOR for MATLAB
export set EDITOR=vim

# set POWERLINE_HOME
#IS_INSTALLED=$(pip show powerline-status | grep powerline-status | wc -l)
#if [ $IS_INSTALLED -ge 1 ]; then
#    export POWERLINE_HOME=$(pip show powerline-status | grep Location | awk -F ':' '{print $2}' | tr -d '[[:space:]]')/powerline
#fi
export POWERLINE_HOME='/usr/local/lib/python2.7/site-packages/powerline'

# apply powerline in bash
if [ -f $POWERLINE_HOME/bindings/bash/powerline.sh ]; then
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source $POWERLINE_HOME/bindings/bash/powerline.sh
fi

#If vim compiled with clientserver
#cs=`command vim --version | grep "clientserver"`
#if [ "$cs" ]; then
#Only use one instance of vim
#    function vim()
#    {
#        if [ "$@" ]; then
#            command vim --servername vim --remote-silent $@
#        else
#            pss=`ps`
#            temp=`echo $pss | grep -w "vim"`
#            if [ "$temp" ]; then
#                echo "vim already open"
#            else
#                command vim --servername vim
#            fi
#        fi
#    }
#else
#    command vim $@
#fi

