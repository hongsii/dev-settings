#! /bin/bash

# Copy vimrc
cp .vimrc .ideavimrc ~

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
