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

set background=dark
set showmode
set showcmd
set ttyfast
set ignorecase
set hlsearch
set showmatch

let php_sql_query=1
let php_htmlInStrings=1
let php_noShortTags=1
let php_folding=0

" PHP documenter script bound to Control-P
autocmd FileType php inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
autocmd FileType php nnoremap <C-P> :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <C-P> :call PhpDocRange()<CR> 

call pathogen#infect()

autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:nerdtree_tabs_open_on_console_startup=1

"nmap SQ <ESC>:mksession! ~/vim/Session.vim<CR>:wqa<CR>

"function! RestoreSession()
"  if argc() == 0 "vim called without arguments
"    execute 'source ~/.vim/Session.vim'
"  end
"endfunction
"autocmd VimEnter * call RestoreSession()

" Enhanced Comments
let g:EnhCommentifyUserBindings = 'yes'
let g:EnhCommentifyRespectIndent = 'yes'
let g:EnhCommentifyPretty = 'yes'
let g:EnhCommentifyAlignRight = 'yes'
let g:EnhCommentifyMultiPartBlocks = 'yes'
imap <F6> <Esc><Plug>Traditionalji
vmap <F6> <Plug>VisualTraditional
nmap <F6> <Plug>Traditionalj

set runtimepath^=~/.vim/bundle/ctrlp.vim

