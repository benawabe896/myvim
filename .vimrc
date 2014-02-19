filetype on
filetype plugin on
filetype indent on
set ruler
set number
set backspace=start,indent,eol
set autowrite
set scrolloff=20
set updatecount=50
set showmatch matchtime=3
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l
set tabstop=2 shiftwidth=2 expandtab

set background=light
set showmode
set showcmd
set ttyfast
set ignorecase
set hlsearch
set showmatch

call pathogen#infect()

autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:nerdtree_tabs_open_on_console_startup=1
