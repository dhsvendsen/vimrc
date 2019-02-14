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
" More intelligent folding
Plugin 'tmhedberg/SimpylFold'
" Smarter autoindent
Plugin 'vim-scripts/indentpython.vim'
" File tree with nerdtree
Plugin 'scrooloose/nerdtree'
" Super searching
Plugin 'kien/ctrlp.vim'
" Smooth powerline
Plugin 'vim-airline/vim-airline'

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

au BufNewFile,BufRead *.py
    \ set tabstop=4       |
    \ set softtabstop=4   |
    \ set shiftwidth=4    |
    \ set textwidth=79    |
    \ set expandtab       |
    \ set autoindent      |
    \ set fileformat=unix 


" Turn indents based on filetype
" filetype plugin indent on

" show existing tab with 4 spaces width
" set tabstop=4

" On pressing tab, insert 4 spaces
" set expandtab

" On pressing ">>", insert 4 spaces
" set shiftwidth=4

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

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"""""""""""""""""""""
"""""" Coding """""""
"""""""""""""""""""""
set encoding=utf-8
" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Enable line numbering
" set nu

"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Hide airlines detection of whitespace
let g:airline#extensions#whitespace#enabled = 0

" Save and execute current python script
imap <F10> <Esc>:w<CR>:!clear;python %<CR>

" Shortcut for NERDtree toggling
nmap <leader>n :NERDTreeToggle<cr>
