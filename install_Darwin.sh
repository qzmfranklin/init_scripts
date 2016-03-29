#!/bin/sh

# Installing code requires manual typing.
echo "Please install the complete XCode, including the command line tools."
sudo xcodebuild -license

# Install brew and packages.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update
brew install git python python3
brew install tree ctags astyle
brew install pkg-config
brew install bash-git-prompt
brew install macvim --with-lua --with-python3

sh ./install_vim.sh
sh ./install_git.sh
sh ./install_completion_bash.sh

echo << EOF >> ~/.bashrc
if [ -f ~/.bash_zhongming ]: then
	. ~/.bash_zhongming
fi
EOF
cp bash_zhongming_Darwin ~/.bash_zhongming

echo << EOF >> ~/.bash_zhongming
# Colorful and git-aware prompt.
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
EOF
