set nocompatible              " be iMproved, required

" execute pathogen#infect()

filetype plugin indent on    " required

" Hide backups and swaps
set backupdir=~/.vim/backups
set directory=~/.vim/backups

set autochdir

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


" Spacemacs land

let mapleader = " "

map ; :

map <leader>g <C-c>
map <C-g> <C-c>

map <leader>fs :w<CR>
map <leader>e :e<space>
map <leader>q :q<CR>
map <leader>xc :q<CR>
map <leader>q! :q!<CR>

map <leader>bb :buffers<CR>
map <leader>bn :bn<CR>
map <leader>bp :bp<CR>
map <leader>bd :bdelete<CR>
map <leader>bk :bdelete<CR>
map <leader>k :bdelete<CR>

map <leader>j= mzgg=G`z

map <leader>W :set wrap!<CR>

map <leader>wh <C-w>h
map <leader>wj <C-w>j
map <leader>wk <C-w>k
map <leader>wl <C-w>l
map <leader>wH <C-w>H
map <leader>wJ <C-w>J
map <leader>wK <C-w>K
map <leader>wL <C-w>L
map <leader>wc <C-w>c
map <leader>ws <C-w>s
map <leader>wv <C-w>v
map <leader>ww <C-w><C-w>

map <leader>rs :terminal<CR>
map <leader>rp :terminal python3<CR>
map <leader>rj :terminal deno<CR>
map <leader>rc :terminal clojure<CR>

set notimeout
set nottimeout

" paredit helpers
map ,{ mz%r}`zr{
map ,[ mz%r]`zr[
map ,( mz%r)`zr(
map ,J mz%a)<ESC>`zi(<ESC>
map ,K mz%x`zx

" stop annoying terminal behaviour
tmap <S-SPACE> <SPACE>
