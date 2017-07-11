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
au BufWritePost * if getline(1) =~ "^#!" | execute "silent !chmod +x %" | endif

" vim-pandoc settings
let g:pandoc#modules#disabled = ["folding"]
let g:pandoc#syntax#conceal#use = 0

let g:startify_custom_header = [
                                \ '                                                        ,,,           ',
                                \ '                                                       (o o)          ',
                                \ '----------------------------------------------------ooO-(_)-Ooo-------',
                                \ '                              _                                 _ ___ ',
                                \ '               __      _____ | |_     _ __   ___     __ _ _   _(_) _ \',
                                \ '               \ \ /\ / / _ \| __|   | ''_ \ / _ \   / _` | | | | \// /',
                                \ '                \ V  V / (_) | |_ _  | | | | (_) | | (_| | |_| | | \/ ',
                                \ '                 \_/\_/ \___/ \__( ) |_| |_|\___/   \__, |\__,_|_| () ',
                                \ '                                 |/                 |___/             ',
                                \ ]




" Quitting whether Goyo is active or not
"ca wq :w<cr>:call Quit()<cr>
"ca q :call Quit()<cr>
"function! Quit()
"    if exists('#goyo')
"        Goyo
"    endif
"    quit
"endfunction

" would be nice if Startify opened in new tabs / windows see
" https://github.com/mhinz/vim-startify/issues/139
" au! WinNew * Startify

function! Goyo_before()
    let b:quitting = 0
    let b:quitting_bang = 0
    autocmd QuitPre <buffer> let b:quitting = 1
    cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! Goyo_after()
    " Quit Vim if this is the only remaining buffer
    if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
        if b:quitting_bang
            qa!
        else
            qa
        endif
    endif
endfunction

let g:goyo_callbacks = [function('Goyo_before'), function('Goyo_after')]

let g:airline#extensions#whitespace#show_message = 0
