#!/bin/sh

echo "Please install the complete XCode, including the command line tools"

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor
brew update
brew install flex bison
brew install git python python3 fftw tree ctags cscope astyle
pip install numpy scipy matplotlib ipython
pip3 install numpy scipy matplotlib ipython3
brew upgrade
brew doctor

sudo xcodebuild -license
brew install macvim --with-lua --with-cscope --with-python
sh ./install_vim.sh

echo "source ~/.bash_zhongming" >> ~/.bash_profile
cp bash_zhongming_Darwin ~/.bash_zhongming
