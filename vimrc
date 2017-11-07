set laststatus=2
set noshowmode
syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smarttab
set hlsearch
set incsearch
set showcmd
set nocompatible

autocmd FileType ruby setlocal et sta shiftwidth=2 softtabstop=2
autocmd FileType sh setlocal et sta shiftwidth=2 softtabstop=2
autocmd FileType html setlocal et sta shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby
autocmd FileType html.eruby setlocal et sta shiftwidth=2 softtabstop=2
filetype plugin indent on
let mapleader=';'
map <leader>e :NERDTree<CR>
map <leader>t :Tlist<CR>

call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()
