#! /bin/bash

if [ -x "$(command -v zsh)" ]; then
    echo "Already install zsh. skip"
    exit 1
fi

echo "Install zsh"
brew install zsh
chsh -s /bin/zsh

echo "Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Install powerline fonts"
git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts && ./install.sh && cd .. && rm -rf fonts

echo "Install zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# .zshrc의 plugins에 zsh-syntax-highlighting 추가
echo "input to zshrc this value"
echo "1. open 'vim ~/.zshrc'"
echo "2. find plugins variable"
echo "3. input 'plugins=(git ... zsh-syntax-highlighting)'"
