set nocompatible              " be iMproved, required

" execute pathogen#infect()

filetype plugin indent on    " required

" Hide backups and swaps
set backupdir=~/.vim/backups
set directory=~/.vim/backups

colorscheme default
if has ('gui')
    colorscheme slate
endif

set guioptions-=T "remove toolbar
set number "show linenumber
set numberwidth=4
highlight LineNr guifg=DarkGray

" Emacs-style command line movement
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-d> <Delete>
cnoremap <C-e> <End>

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
set t_vb=  "do nothing, visual bell, no flashy flash

set hlsearch " search highlighting

" No highlight
nnoremap <CR> :noh<CR><CR>

" Trim trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Fucking folds
set foldmethod=manual

" Make/load views
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

" F#
"au BufEnter *.fs,*.fsx,*.fsi setlocal omnifunc=fsharpbinding#python#Complete

" TypeScript
" au BufRead,BufNewFile *.ts setlocal filetype=typescript
" set rtp+=/usr/local/lib/node_modules/typescript-tools

" Syntastic
" nnoremap `` :SyntasticCheck<CR>

au BufRead,BufNewFile *.md set filetype=markdown "Markdown
au BufRead,BufNewFile *.hbs set filetype=html syntax=html "Handlebars
