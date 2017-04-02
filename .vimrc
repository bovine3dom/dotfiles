execute pathogen#infect()
syntax on
filetype plugin indent on


set nu relativenumber

nnoremap <F4> :UndotreeToggle<cr>:UndotreeFocus<cr>
"map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR> "swaps between
".h and .cpp files

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
let mapleader = ","
let maplocalleader = ","
noremap <leader><space> :nohlsearch<CR>

set encoding=UTF-8

set shell=/bin/bash


set linebreak breakindent

let g:pandoc#keyboard#display_motions = 0

let g:airline_theme = "sol"

set diffopt+=vertical

let g:pandoc#folding#level = 4

set tildeop

set wildmode=longest,list,full

set wildmenu

set scrolloff=15 " prevents cursor from reaching the edge of the screen

set mouse=a

set noshowmode

let g:goyo_width = "90%" 
let g:goyo_height = "95%"

au BufRead,BufNewFile *.md		set syntax=markdown  | set spell | set norelativenumber | set nonumber | Goyo | set showmode

autocmd BufRead,BufNewFile ~/Dropbox/diary* set syntax=markdown  | set spell 

" chmod +x on scripts
au BufWritePost * if getline(1) =~ "^#!" | silent !chmod +x % | endif
