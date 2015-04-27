set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'fatih/vim-go'
" Autocomplete code. You need to remember to install dependancies.
Plugin 'Valloric/YouCompleteMe' 
Plugin 'jiangmiao/auto-pairs' 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required`


" General Settings
colorscheme badwolf                           " Color Scheme
syntax on                                     " Syntax Highlighting
set tabstop=2 shiftwidth=2 expandtab          " Space Indentation
set number                                    " Line Numbering
set hlsearch                                  " Highlight Search Results
set hidden                                    " Allow unsaved buffers


" Folding Settings
set foldmethod=indent   " Fold based on indent
set foldnestmax=10      " Deepest fold is 10 levels
set nofoldenable        " Dont fold by default
set foldlevel=1         " This is just what i use

" Key Mapping
nmap <leader>bb :CtrlPBuffer<cr>
" Buffer Switching
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>
" Copy and Paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
