#!/bin/bash

curl https://raw.githubusercontent.com/jb55/typescript-ctags/master/.ctags > .ctags

function link {
    ln -sf $(pwd)/$1 ~/$1
    ls -al ~/$1
}

# TODO for file in $(ls -la | grep ????)

link .screenrc
link .vimrc
link .emacs
link .vim/plugin/slime.vim
link .ghc/ghci.conf
link .ctags

# TODO Merge with .bash_profile / make system for PATH per system
#link .bashrc
