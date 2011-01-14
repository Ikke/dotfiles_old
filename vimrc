imap ii <Esc>
set number
filetype plugin on
syntax on
colorscheme inkpot

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
