#!/bin/sh

echo "Please install the complete XCode, including the command line tools"

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor
brew update
brew install flex bison
brew install git python python3
brew install fftw tree ctags cscope astyle
brew install htop pkg-config
brew install bash-git-prompt
pip install numpy scipy matplotlib ipython
pip3 install numpy scipy matplotlib ipython3[all] isodate dateutil
brew upgrade
brew doctor

sudo xcodebuild -license
brew install macvim --with-lua --with-cscope --with-python
sh ./install_vim.sh

# Color scheme for both the mac terminal and vim
cd ~/.vim/bundle
git clone https://github.com/hukl/Smyck-Color-Scheme.git
cd -

sh ./install_git.sh
source ~/.git_bash_completion

echo "source ~/.bash_zhongming" >> ~/.bash_profile
cp bash_zhongming_Darwin ~/.bash_zhongming
