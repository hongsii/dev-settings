#! /bin/bash

echo "Install zsh"
brew install zsh

echo "Change shell to zsh"
chsh -s /bin/zsh


echo "Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


echo "Install powerline fonts"
git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts && ./install.sh && cd .. rm -rf fonts

echo "Apply zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
