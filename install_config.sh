function link {
    ln -sfb $(pwd)/$1 ~/$1
    ls -al ~/$1
}

# TODO for file in $(ls -la | grep ????)

link .screenrc
link .vimrc
link .emacs
link .vim/plugin/slime.vim
link .ghc/ghci.conf

# TODO Merge with .bash_profile / make system for PATH per system
#link .bashrc
