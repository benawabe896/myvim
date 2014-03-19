set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'

let g:syntastic_check_on_open=1
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

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
set term=builtin_ansi
syntax on

set t_Co=256
colorscheme distinguished

set background=dark
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
