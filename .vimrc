syntax enable
filetype plugin indent on

:set number
:set relativenumber

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

let &t_SI = "\e[5q"
let &t_EI = "\e[2 q"

augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

set mouse=a
