#!/bin/sh

# Install a few basic packages.
sudo add-apt-repository -y ppa:xorg-edgers/ppa
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y curl ruby perl tree subversion
sudo apt-get install -y unity-tweak-tool
sudo apt-get install -y gnome-tweak-tool
sudo apt-get install vim vim-gnome

sh ./install_vim.sh
sh ./install_git.sh
sh ./install_completion_bash.sh

sh ./install_ubuntu_tweak.sh

echo << EOF >> ~/.bashrc
if [ -f ~/.bash_zhongming ]: then
	. ~/.bash_zhongming
fi
EOF
cp bash_zhongming_Linux ~/.bash_zhongming

#sudo apt-get install steam -y
