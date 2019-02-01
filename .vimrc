" Set mapleader to ","
let mapleader=","

"""""""""""""""""""
""""" vim-plug """"
"""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Gruvbox colorscheme
Plug 'morhetz/gruvbox'

call plug#end()



"""""""""""""""""""
""""" Colors """"""
"""""""""""""""""""
colorscheme gruvbox
set background=dark

"""""""""""""""""""
""""" Indents """""
"""""""""""""""""""

" Turn indents based on filetype
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4

" On pressing tab, insert 4 spaces
set expandtab

" On pressing ">>", insert 4 spaces
set shiftwidth=4

""""""""""""""""""""
""" Cool keymaps """
""""""""""""""""""""

" Remap below function of stripping trailing whitespace to F5
nnoremap <F5> :%s/\s\+$//e<CR>

" Remap below function of deleting blank lines to F6
nnoremap <F6> :g/^$/d<CR>

" Remap ",+l" to set list, i.e. see whitespaces
nmap <leader>l :set list!<CR>


