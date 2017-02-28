execute pathogen#infect()
syntax on
filetype plugin indent on


set nu relativenumber

nnoremap <F4> :UndotreeToggle<cr>:UndotreeFocus<cr>

if has("persistent_undo")
	set undodir=~/.undodir/
	set undofile
	set undolevels=1000
	set undoreload=10000
endif

set expandtab tabstop=4 shiftwidth=4 softtabstop=4

set ignorecase smartcase incsearch hlsearch

set autochdir
set cursorline
set lazyredraw
noremap <leader><space> :nohlsearch<CR>

set encoding=UTF-8

set shell=/bin/bash

let mapleader = ","

set linebreak breakindent

au BufRead,BufNewFile *.md		set syntax=markdown

autocmd BufRead,BufNewFile ~/Dropbox/diary* set filetype=pandoc

let g:pandoc#keyboard#display_motions = 0

let g:airline_theme = "sol"

set diffopt+=vertical

let g:pandoc#folding#level = 4

set tildeop

set wildmode=longest,list,full

set wildmenu

set scrolloff=15 " prevents cursor from reaching the edge of the screen
