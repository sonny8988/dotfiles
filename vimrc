set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'            " Vundle package manager
Plugin 'scrooloose/nerdtree'          " Nerd Tree
Plugin 'flazz/vim-colorschemes'       " Tons of colors 
Plugin 'kien/ctrlp.vim'               " Fuzzy Search
Plugin 'leafgarland/typescript-vim'   " Vim for typescript
Plugin 'fatih/vim-go'                 " Vim for golang  
Plugin 'derekwyatt/vim-scala'         " Vim for Scala
" Autocomplete code. You need to remember to install dependancies.
Plugin 'Valloric/YouCompleteMe'       " Autocompletion  
Plugin 'jiangmiao/auto-pairs'         " Closing Brackets
Plugin 'rking/ag.vim'                 " Searching

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


""""""""""""""""""""
" General Settings
""""""""""""""""""""
colorscheme badwolf                           " Color Scheme
syntax on                                     " Syntax Highlighting
set tabstop=2 shiftwidth=2 expandtab          " Space Indentation
set number                                    " Line Numbering
set hlsearch                                  " Highlight Search Results
"set hidden                                    " Allow unsaved buffers


" Folding Settings
set foldmethod=indent   " Fold based on indent
set foldnestmax=10      " Deepest fold is 10 levels
set nofoldenable        " Dont fold by default
set foldlevel=1         " This is just what i use


""""""""""""""""
" Key Mappings
""""""""""""""""
nmap <leader>bb :CtrlPBuffer<cr>
" Buffer Switching
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>
" Copy and Paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>
" Toggle NERDTREE
map <F2> :NERDTreeToggle<CR>
