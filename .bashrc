#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lh'

# Haskell
export PATH="~/.cabal/bin:"$PATH

#screen -d -R
alias screen='screen -dRaA'
