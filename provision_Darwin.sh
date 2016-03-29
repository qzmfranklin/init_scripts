#!/bin/sh

__file__=$(readlink -f $0)
this_dir=$(dirname $__file__)

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

ln -s $this_dir/bash_zhongming_Darwin ~/.bash_zhongming
ln -s $this_dir/completion ~/.zhongming_completion
echo << EOF >> ~/.bashrc
if [ -f ~/.bash_zhongming ]: then
	. ~/.bash_zhongming
fi
EOF

echo "
Symlinks:
    ~/.bash_zhongming           =>  $this_dir/bash_zhongming_Darwin
    ~/.zhongming_completion/    =>  $this_dir/completion/
"
