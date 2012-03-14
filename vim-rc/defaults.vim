set nocompatible
set nomodeline

set hidden
set title
" desactivado permite copiar y pegar de la terminal
" set mouse=a
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
"set number
set ruler
set showcmd

set visualbell

set colorcolumn=80

set listchars=tab:»·,trail:·
set list

let mapleader = ","

set directory^=$HOME/.vim_swap//   "put all swap files together in one place

" evitar usar las flechas para movimiento
noremap <Left>  <NOP>
noremap <Right> <NOP>
noremap <Up>    <NOP>
noremap <Down>  <NOP>

" rxvt fix
" http://groups.yahoo.com/group/vim/message/66414
" http://comments.gmane.org/gmane.os.cygwin.xfree/16419

nmap    <ESC>[5^    <C-PageUp>
nmap    <ESC>[6^    <C-PageDown>
" nnoremap <C-PageDown> :bn!<CR>
" nnoremap <C-PageUp> :bp!<CR>

imap jj <ESC>

" un up/down sobre posición aparente, en caso de que la línea se
" pliegue en pantalla al ser muy larga
map <Down> gj
map <Up> gk

" sólo para modo texto (problemático con código)
" nmap <Space> gqip
