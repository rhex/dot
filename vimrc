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
set colorcolumn=120
" set ignorecase
set smartcase
highlight ColorColumn ctermbg=gray

autocmd FileType ruby setlocal et sta shiftwidth=2 softtabstop=2
autocmd FileType sh setlocal et sta shiftwidth=2 softtabstop=2
autocmd FileType html setlocal et sta shiftwidth=2 softtabstop=2
autocmd FileType json setlocal et sta shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby
autocmd FileType html.eruby setlocal et sta shiftwidth=2 softtabstop=2
filetype plugin indent on

call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'Raimondi/delimitMate'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'vim-airline/vim-airline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'luochen1990/rainbow'
Plug 'easymotion/vim-easymotion'
Plug 'unblevable/quick-scope'
Plug 'benmills/vimux'
Plug 'flazz/vim-colorschemes'
Plug 'cespare/vim-toml'
Plug 'elzr/vim-json'

" Initialize plugin system
call plug#end()

let mapleader=';'

" fmt json
" map <leader>f :execute '%!python -m json.tool' | w<CR>
map <leader>j :%!jq '.'<CR>

" nerdtree
map <leader>e :NERDTree<CR>

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['govet']
"let g:syntastic_go_checkers = ['go', 'golint', 'govet']

" tagbar
nnoremap <silent> <F9> :TagbarToggle<CR>
"let g:tagbar_autofocus = 1


" ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column'
"map <c-u> :Ack<space>

" rainbow, for highlight parathesis
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" ctrlp
"let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'

" vim-go
"let g:go_fmt_command = "goimports"
"let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
autocmd FileType go nmap <leader>r  <Plug>(go-referrers)
autocmd FileType go nmap <leader>i  <Plug>(go-info)
autocmd FileType go nmap <leader>d  <Plug>(go-describe)
autocmd FileType go nmap <leader>c  <Plug>(go-callers)
map <leader>s :GoSameIds<CR>
map <leader>l :GoSameIdsClear<CR>
"autocmd FileType go nmap <leader>c  <Plug>(go-same-ids-clear)

" quick-scope
let g:qs_enable=0
nmap <leader>q <plug>(QuickScopeToggle)
xmap <leader>q <plug>(QuickScopeToggle)

" color
" colorscheme molokai
"
set background=dark
" set background=light
" colorscheme solarized
"
" colorscheme dracula
colorscheme gruvbox

" vim-json
let g:vim_json_syntax_conceal = 0
