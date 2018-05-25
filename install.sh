#!/bin/bash

# install ctags first by: sudo apt-get install ctags
if [ -d ~/dev/github/dot ];then
ln -sf ~/dev/github/dot ~/dotfiles
fi

# vim
ln -sf ~/dotfiles/vimrc ~/.vimrc

ln -sf ~/dotfiles/bash_alias ~/.bash_alias
ln -sf ~/dotfiles/bash_profile ~/.bash_profile
ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/gitignore_global ~/.gitignore_global
sudo ln -s /usr/bin/vim /usr/local/bin/vim

# ln -sf ~/dotfiles/pryrc ~/.pryrc
# This is for neovim.
ln -s ../.vim ~/.config/nvim
ln -s ../.vimrc ~/.vim/init.vim
