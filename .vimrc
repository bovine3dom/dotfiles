execute pathogen#infect()
syntax on
filetype plugin indent on

set nu relativenumber

nnoremap <F5> :UndotreeToggle<cr>:UndotreeFocus<cr>

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
