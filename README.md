dotfiles
========

A backup of my dotfiles

vim usage
=========

``
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
``

:PlugInstall

youcompleteme:
brew install CMake
cd ~/.vim/bundle/YouCompleteMe
# for c
./install.sh --clang-completer
# for go
./install.sh --gocode-completer

mru.vim: ``:MRU``

vim grep: 

``:vimgrep /abc/ **/*``

``:copen #add to quickfix`` 

args:

vim ruby debugger:

         :Rdebugger
         <Leader>b - set breakpoint at current line
         <Leader>v - open/close window with variables. You can expand/collapse variables by 'o' in normal mode or left-mouse double-click
         <Leader>n - step over
         <Leader>s - step into
         <Leader>c - continue
