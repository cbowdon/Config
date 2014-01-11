"Hide backups
set backupdir=~/.vim/backups
"Hide swaps
set directory=~/.vim/backups

colorscheme default
"if has ('gui')
"    colorscheme slate
"endif

set guioptions-=T "remove toolbar
set number "show linenumber
"set numberwidth=4
highlight LineNr guifg=DarkGray
"ensure syntax coloring in terminal
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
"set ai "autoindent

set vb "set visual bell - means no audio bell
"40 rows, 90 cols
"win 100 56

" search highlighting
set hlsearch

"Filetype and omnicomplete
set filetype=on
filetype plugin on
set ofu=syntaxcomplete#Complete
filetype indent on

"HTML
autocmd FileType html set shiftwidth=2
autocmd FileType html set tabstop=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0

"CSS
autocmd FileType css set shiftwidth=2
autocmd FileType css set tabstop=2
autocmd FileType css set sts=2
autocmd FileType css set textwidth=80

"JavaScript
autocmd FileType js set tabstop=4
autocmd FileType js set shiftwidth=4
autocmd FileType js set textwidth=80

let g:syntastic_javascript_checker = "jshint"

"Clojure
autocmd FileType clj set expandtabs

"Markdown
au BufRead,BufNewFile *.md set filetype=markdown

"Autocompletion
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"jQuery syntax
"au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

"This unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

"Trim trailing whitespace
nnoremap :trim :%s/\s\+$//g
autocmd BufWritePre * :%s/\s\+$//e

"Prevent MiddleMouse
:nnoremap <MiddleMouse> <Nop>
:inoremap <MiddleMouse> <Nop>
:nnoremap <2-MiddleMouse> <Nop>
:inoremap <2-MiddleMouse> <Nop>
:nnoremap <3-MiddleMouse> <Nop>
:inoremap <3-MiddleMouse> <Nop>

"Map C++-style commenting
:map :\\ :s/\/\///g <CR> :noh <CR>
:map :// :s/^\(.\+\)/\/\/\1/g <CR> :noh <CR>

"Comment colors
"hi Comment ctermfg=white ctermbg=red
"hi Visual ctermfg=brown ctermbg=black

"Make/load views
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

"Emacs-style command line movement
:cnoremap <C-a> <Home>
:cnoremap <C-b> <Left>
:cnoremap <C-f> <Right>
:cnoremap <C-d> <Delete>
:cnoremap <C-e> <End>

execute pathogen#infect()
