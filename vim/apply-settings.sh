#! /bin/bash

# Copy vimrc
cp .vimrc .ideavimrc ~
source ~/.vimrc

# Install VimPlug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
