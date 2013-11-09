function link {
    ln -sfb $(pwd)/$1 ~/$1
    ls -al ~ | grep $1
}

# TODO for file in $(ls -la | grep ????)

link .screenrc
link .vimrc
link .emacs
link .vim/plugin/slime.vim

# TODO Merge with .bash_profile / make system for PATH per system
#link .bashrc
