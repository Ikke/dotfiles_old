set number

filetype on
"filetype indent on
filetype plugin on
"filetype plugin indent on

syntax on
colorscheme inkpot

set autoindent
set nocompatible
set showmatch
set ruler
set autowrite
set autoread
set incsearch
set virtualedit=all
set showcmd
set hlsearch
set nohidden

inoremap jj <Esc>


autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4


" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
