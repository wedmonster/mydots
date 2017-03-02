#!/bin/bash
alias ls="ls --color=always" 
alias grep="grep --color=always"
alias egrep="egrep --color=always"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias vimtex='vim --servername vim'

alias nsum='paste -sd+ - | bc'
