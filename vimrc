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
