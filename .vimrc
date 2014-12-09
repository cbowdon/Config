set nocompatible              " be iMproved, required
filetype off                  " required

" :h vundle for help
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'   " let Vundle manage Vundle, required

Plugin 'scrooloose/syntastic'

" Plugin 'fsharp/fsharpbinding', {'rtp': 'vim/'}

Plugin 'file:///Users/chris/.vim/bundles/fsharpbinding-vim'

call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on

" Set up fsharp-binding
":! cd ~/.vim/bundle/fsharpbinding/vim; make install

" Hide backups and swaps
set backupdir=~/.vim/backups
set directory=~/.vim/backups

colorscheme default
if has ('gui')
    colorscheme slate
endif

set guioptions-=T "remove toolbar
set number "show linenumber
" set numberwidth=4
highlight LineNr guifg=DarkGray
" ensure syntax coloring in terminal
syntax on

set encoding=utf-8

if has ('win32')
	set guifont=Consolas
elseif has('win64')
	set guifont=Lucida_Console
else
	set guifont=Monaco
endif

set nowrap
set tabstop=4
set shiftwidth=4
set expandtab

set vb "set visual bell - means no audio bell

set hlsearch " search highlighting

" F#
au BufEnter *.fs,*.fsx,*.fsi setlocal omnifunc=fsharpbinding#python#Complete

" TypeScript
au BufRead,BufNewFile *.ts setlocal filetype=typescript
set rtp+=/usr/local/lib/node_modules/typescript-tools

" Syntastic
nnoremap `` :SyntasticCheck<CR>

au BufRead,BufNewFile *.md set filetype=markdown "Markdown
au BufRead,BufNewFile *.hbs set filetype=html syntax=html "Handlebars

" No highlight
nnoremap <CR> :noh<CR><CR>

" Trim trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Prevent MiddleMouse
nnoremap <MiddleMouse> <Nop>
inoremap <MiddleMouse> <Nop>
nnoremap <2-MiddleMouse> <Nop>
inoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>

" Fucking folds
set foldmethod=manual

" Make/load views
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

" Emacs-style command line movement
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-d> <Delete>
cnoremap <C-e> <End>
