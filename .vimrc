" execute pathogen#infect() " moved from Pathogen to vim-plug

" Install vim-plug if it isn't there already
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/junegunn/goyo.vim'
" Distraction free mode for Markdown
"
Plug 'https://github.com/PotatoesMaster/i3-vim-syntax'
Plug 'https://github.com/JuliaEditorSupport/julia-vim'
Plug 'https://github.com/freitass/todo.txt-vim'
Plug 'https://github.com/flazz/vim-colorschemes'
" Plug 'https://github.com/felixhummel/setcolors.vim'
Plug 'https://github.com/SirVer/ultisnips'

Plug 'https://github.com/mbbill/undotree'
" Undo history as a tree

Plug 'https://github.com/KabbAmine/vCoolor.vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/kchmck/vim-coffee-script'
" Plug 'https://github.com/Quramy/tsuquyomi'

Plug 'https://github.com/tpope/vim-commentary'
" Comment stuff out with gcc


Plug 'https://github.com/dag/vim-fish'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/airblade/vim-gitgutter'
" Displays changes in git in the margin

Plug 'https://github.com/vim-pandoc/vim-pandoc'
Plug 'https://github.com/vim-pandoc/vim-pandoc-syntax'
Plug 'https://github.com/florentc/vim-pdfpc-syntax'

Plug 'https://github.com/tpope/vim-sensible'
" Sensible vim defaults

Plug 'https://github.com/honza/vim-snippets'

Plug 'https://github.com/mhinz/vim-startify'
" Handy start page with recently used files

Plug 'https://github.com/tpope/vim-surround'

Plug 'https://github.com/keith/investigate.vim'
" Run commands based on what's under cursor and filetype with gK


Plug 'https://github.com/w0rp/ale.git', {'for': ['typescript', 'python']}
" Async linting

Plug 'https://github.com/neomake/neomake', {'for': 'julia'}
Plug 'https://github.com/zyedidia/julialint.vim', {'for': 'julia'}

Plug 'https://github.com/jaxbot/semantic-highlight.vim'
Plug 'https://github.com/tpope/vim-rhubarb'

Plug 'https://github.com/sheerun/vim-polyglot'
" Syntax highlighting for most languages

Plug 'https://github.com/skywind3000/asyncrun.vim'
" Swap ! for AsyncRun; view output with :cw (quickfix)

Plug 'https://github.com/leafgarland/typescript-vim'

Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/haya14busa/incsearch.vim'
Plug 'https://github.com/haya14busa/incsearch-fuzzy.vim'

Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

call plug#end()

" Type :PlugInstall to install a new plugin
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

set wildmode=full

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

set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']


" When writing emails, format the text nicely
autocmd FileType mail inoremap <CR> <ESC>gqqo
" RFC 1855 says 65 characters
set formatprg=par\ -w65\ -j1
autocmd FileType mail set tw=0

" Disable mad ^6 binding and map to ^]
let g:tsuquyomi_disable_default_mappings = 1
au FileType typescript nnoremap <C-]> <Plug>(TsuquyomiDefinition)

let g:ale_linters = {
\   'typescript': ['tsserver'],
\}

" Tmux-style zoom
nmap z :tabnew %<CR>

set grepprg=rg\ --vimgrep
let g:investigate_url_for_typescript="https://www.google.co.uk/search?safe=off&q=site:developer.mozilla.org+^s&btnI=1"
let g:investigate_url_for_julia="https://www.google.co.uk/search?safe=off&q=site:docs.julialang.org/docs/en/stable+^s&btnI=1"

noremap q: :q

let g:ale_lint_on_text_changed="normal"
let g:ale_lint_on_insert_leave=1

" stop annoying beeps

" open vnew windows to the right, as makes obvious sense
set splitright

" cI to easily rename all occurences of word under cursor in document
nnoremap cI *:%s//

" D,C go to end of line. Y yanks whole line. Not any more.
nnoremap Y y$

" remap easymotion to ,
map <Leader> <Plug>(easymotion-prefix)

" incsearch improvements
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

let g:ale_fixers = {
 \   'python': [
 \       'yapf',
 \   ],
 \}

let g:deoplete#enable_at_startup = 1
