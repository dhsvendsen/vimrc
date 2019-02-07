"""""""""""""""""""
""""" Vundle """"""
"""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Gruvbox colorscheme
Plugin 'morhetz/gruvbox'
" Python autocomplete
Plugin 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


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
" Set mapleader to ","
let mapleader=","

" Remap below function of stripping trailing whitespace to F5
nnoremap <F5> :%s/\s\+$//e<CR>

" Remap below function of deleting blank lines to F6
nnoremap <F6> :g/^$/d<CR>

" Remap ",+l" to set list, i.e. see whitespaces
nmap <leader>l :set list!<CR>


