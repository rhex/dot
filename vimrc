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
"set clipboard=unnamedplus
set colorcolumn=120
" set ignorecase
set smartcase
"set mouse=r
set encoding=utf-8

" let g:loaded_python_provider = 1
let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
highlight ColorColumn ctermbg=gray

autocmd FileType ruby setlocal et sta shiftwidth=2 softtabstop=2
autocmd FileType sh setlocal et sta shiftwidth=2 softtabstop=2
autocmd FileType html setlocal et sta shiftwidth=2 softtabstop=2
autocmd FileType json setlocal et sta shiftwidth=2 softtabstop=2
autocmd FileType yaml setlocal et sta shiftwidth=2 softtabstop=2
autocmd FileType yml setlocal et sta shiftwidth=2 softtabstop=2
autocmd FileType toml setlocal et sta shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby
autocmd BufNewFile,BufRead *.es6 set filetype=javascript
"au BufNewFile,BufRead Jenkinsfile setf groovy
autocmd FileType html.eruby setlocal et sta shiftwidth=2 softtabstop=2
filetype plugin indent on

call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'sheerun/vim-polyglot'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
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
" Plug 'terryma/vim-multiple-cursors'
Plug 'dyng/ctrlsf.vim'
" Plug 'SirVer/ultisnips'
Plug 'christoomey/vim-tmux-navigator'
Plug 'godlygeek/tabular'
Plug 'ianva/vim-youdao-translater'
Plug 'kana/vim-fakeclip'
Plug 'davidhalter/jedi-vim'
Plug 'Yggdroot/indentLine'
Plug 'tell-k/vim-autopep8'
Plug 'editorconfig/editorconfig-vim'
" included by vim-polyglot
"Plug 'plasticboy/vim-markdown'
"Plug 'pangloss/vim-javascript'
"Plug 'pearofducks/ansible-vim'
"Plug 'cespare/vim-toml'
"Plug 'stephpy/vim-yaml'
"Plug 'elzr/vim-json'
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
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_go_checkers = ['govet']
"let g:syntastic_go_checkers = ['go', 'golint', 'govet']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:pymode_lint_ignore = "E501,W"
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = "--max-line-length=160"
"let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_pylint_args = '-E'
"let g:syntastic_python_checkers = ['']
"let g:syntastic_python_checkers = ['flake8', 'pyflakes', 'pylint']
"
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_checkers = ['jshint']
map <leader>r :SyntasticReset<CR>

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

"" 'easymotion/vim-easymotion'
map <leader><leader>h <plug>(easymotion-linebackward)
map <leader><leader>l <plug>(easymotion-lineforward)

" 'terryma/vim-multiple-cursors'
" if !has('gui_running')
"   map "in Insert mode, type Ctrl+v Alt+n here" <A-n>
" endif
" let g:multi_cursor_use_default_mapping=0
" " Default mapping
" let g:multi_cursor_start_word_key      = '<C-n>'
" let g:multi_cursor_select_all_word_key = '<C-m>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
" let g:multi_cursor_next_key            = '<C-n>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_quit_key            = '<Esc>'
" map <leader>m :MultipleCursorsFind<Space>
"nnoremap <silent> <M-j> :MultipleCursorsFind <C-R>/<CR>
"vnoremap <silent> <M-j> :MultipleCursorsFind <C-R>/<CR>

"" 'dyng/ctrlsf.vim'
nnoremap <C-f> :CtrlSF<Space>
let g:ctrlsf_ignore_dir=["vendor"]
let g:ctrlsf_auto_close=0
" let g:ctrlsf_default_root='cwd'
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

if has('gui_running')
    let g:airline_powerline_fonts = 1
endif


" vim-go
"let g:go_fmt_command = "goimports"
"let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
map <leader>s :GoSameIds<CR>
map <leader>c :GoSameIdsClear<CR>
map <leader>i :GoImports<CR>
"autocmd FileType go nmap <leader>c  <Plug>(go-same-ids-clear)
au FileType go nmap <leader>rf  <Plug>(go-referrers)
au FileType go nmap <leader>i  <Plug>(go-info)
au FileType go nmap <leader>d  <Plug>(go-describe)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
"au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
" au FileType go nmap <Leader>e <Plug>(go-rename)

autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_server_python_interpreter='/usr/bin/python2'
"let g:ycm_python_binary_path = '/usr/bin/python'
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"
" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>""

" youdao
vnoremap <silent> <C-Y> :<C-u>Ydv<CR>
nnoremap <silent> <C-Y> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

" Clear search highlights
map <leader>c :nohlsearch<cr>

function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 1
endfunction


function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete = 0
endfunction

if has('nvim')
    let g:python_host_prog = '/usr/bin/python2'
    let g:python3_host_prog = '/usr/bin/python3'
endif

if has('mouse')
""    set mouse=a
endif

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" ansible-vim
let g:ansible_yamlKeyName = 'yamlKey'

" windows support
" copy (write) highlighted text to .vimbuffer
"vmap <C-c> y:new " ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
"map <C-v> :r ~/.vimbuffer<CR>

set clipboard=unnamedplus

" indentline
" :IndentLinesToggle
let g:indentLine_char='┆'
let g:indentLine_enabled = 1

" autopep8
let g:autopep8_disable_show_diff=1

" ycm
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_global_ycm_extra_conf='~/dotfiles/.ycm_extra_conf.py'
" let g:ycm_key_invoke_completion = ['<C-Space>']

" jedi
"let g:jedi#force_py_version=2
" Auto add head info
" .py file into add header
function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "# -*- coding: utf-8 -*-")
    normal G
    normal o
endf
autocmd bufnewfile *.py call HeaderPython()

map hd :YcmCompleter GoToDefinitionElseDeclaration<CR>
map yd :YcmCompleter GetDoc<CR>
map yr :YcmCompleter GoToReferences<CR>

" https://github.com/mindriot101/vim-yapf#why-you-may-not-need-this-plugin
autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr><C-o>
" autocmd BufWritePre *.py 0,$!yapf

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
