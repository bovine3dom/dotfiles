execute pathogen#infect()
syntax on
filetype plugin indent on

if has("persistent_undo")
	set undodir=~/.undodir/
	set undofile
	set undolevels=1000
	set undoreload=10000
endif

set nu relativenumber


nnoremap <F5> :UndotreeToggle<cr> :UndotreeFocus<cr>

set expandtab tabstop=4 shiftwidth=4 softtabstop=4

set ignorecase smartcase

set cursorline

set clipboard+=unnamed " Use the middle click to store yanked/deleted text; unnamedplus oes ctrl+v

set title " Display filename in titlebar (for mod+b!)
