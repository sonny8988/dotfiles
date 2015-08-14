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
Plugin 'kchmck/vim-coffee-script'     " CoffeeScript
Plugin 'fatih/vim-go'                 " Vim for golang  
Plugin 'derekwyatt/vim-scala'         " Vim for Scala
" Autocomplete code. You need to remember to install dependancies.
Plugin 'Valloric/YouCompleteMe'       " Autocompletion  
Plugin 'docunext/closetag.vim'        " Close HTML tags
Plugin 'jiangmiao/auto-pairs'         " Closing Brackets
Plugin 'rking/ag.vim'                 " Searching
Plugin 'cakebaker/scss-syntax.vim'    " SCSS hightlighting
Plugin 'ntpeters/vim-better-whitespace' " Trailing whitspace

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
" set guifont=Monospace\ 8

" Folding Settings
set foldmethod=indent   " Fold based on indent
set foldnestmax=10      " Deepest fold is 10 levels
set nofoldenable        " Dont fold by default
set foldlevel=1         " This is just what i use

" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby


""""""""""""""""
" Key Mappings
""""""""""""""""
" Leader Key Mapping
nmap <leader>bb :CtrlPBuffer<cr>          " Ctrl P for open buffers
nmap <silent> <leader>d :bp\|bd #<CR>     " Delete buffer but don't close window

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

map <F2> :NERDTreeToggle<CR>              " Toggle NERDTREE
map <F5> :ClearCtrlPCache<CR>             " Clear CtrlP Cache
