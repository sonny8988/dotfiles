set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'            " Vundle package manager
Plugin 'scrooloose/nerdtree'          " Nerd Tree
Plugin 'flazz/vim-colorschemes'       " Tons of color
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
Plugin 'FelikZ/ctrlp-py-matcher'      " Faster CTRLP matching
Plugin 'scrooloose/syntastic'         " External syntax checker
Plugin 'slim-template/vim-slim.git'   " Slim
Plugin 'rhysd/vim-crystal'            " VIM for Crystal Lang
Plugin 'slim-template/vim-slim.git'   " SLIM templating

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
set guifont=Monospace\ 8

" Folding Settings
set foldmethod=indent   " Fold based on indent
" set foldnestmax=10      " Deepest fold is 10 levels
set nofoldenable        " Dont fold by default
set foldlevel=1         " This is just what i use

" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby
" slim syntax highlighting on ngslim
autocmd BufNewFile,BufRead *.ngslim set syntax=slim


" Syntastic aggregator checks for golang
let g:syntastic_aggregate_errors = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck', 'govet']
let g:go_fmt_command = "goimports"

" Syntastic for Ruby
let g:syntastic_ruby_checkers = ['mri', 'rubocop']


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

" Wierd backspace behavior on OSX
set backspace=indent,eol,start

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

map <F2> :NERDTreeToggle<CR>              " Toggle NERDTREE
map <F5> :ClearCtrlPCache<CR>             " Clear CtrlP Cache

let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'python':1  }
" Make CTRLP faster
" The one uses the git to build the file list
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
  let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
if executable("ag") " If ag is available use it as filename list generator instead of 'find'
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'
endif
