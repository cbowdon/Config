function link {
    ln -sfb $(pwd)/$1 ~/$1
    ls -al ~ | grep $1
}

link .screenrc
link .vimrc
link .bashrc
link .emacs
