Configuration files
===================

If it's important, version it!

Usage
-----
Use [GNU Stow](https://www.gnu.org/software/stow/) to install symlinks for a particular program, e.g. to install symlinks for =~/.emacs= and =~/init.org= (the files in [emacs](./emacs)):

    cd Config
    stow -t ~ emacs

Emacs
-----
Contains my [pinched-favourite-bits-from-Spacemacs](https://medium.com/@CBowdon/pinching-the-best-bits-from-spacemacs-869b8c793ad3) literate init file.

Vim
---
I used to use Vim extensively, managing plugins with vundle.

- .vimrc
- slime.vim - from Jonathon Palardy https://github.com/jpalardy/vim-slime

CTags
-----
I developed some CTags defs for TypeScript so that I could work more effectively with it in Vim.

GHC
---
Minor quality-of-life improvements for GHCi.

Bash
----
Rather old, use with caution.

- .bashrc - Arch
- .bash_profile - OSX

Conky
-----

[This config](https://www.gnome-look.org/content/show.php/conky_grey?content=137272) but adapted to openSUSE Tumbleweed.

License
-------
GPL3 for my stuff, slime.vim which is copied here, is MIT and syslog-mode is GPL2.
