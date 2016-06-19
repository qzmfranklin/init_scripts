#!/bin/bash

__file__=$(readlink -f $0)
this_dir=$(dirname $__file__)

# Install a few basic packages.
sudo add-apt-repository -y ppa:xorg-edgers/ppa
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get update

sudo apt-get install -y build-essential
sudo apt-get install -y curl ruby perl tree subversion
sudo apt-get install -y unity-tweak-tool
sudo apt-get install -y gnome-tweak-tool
sudo apt-get install -y vim vim-gnome
sudo apt-get install -y xclip

# Install ICU4C
sudo apt-get install -y libicu-dev

# Ubuntu 14.04 only has up to clang-3.6
sudo apt-get install -y clang-3.6
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.6 100
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.6 100

# Install ubuntu-tweak tool for better workspace.
cd ~/Downloads/ && wget https://launchpad.net/ubuntu-tweak/0.8.x/0.8.5/+download/ubuntu-tweak_0.8.5-1_all.deb
sudo dpkg -i ~/Downloads/ubuntu-tweak_*.deb; sudo apt-get -f install
cd -

sh ./install_vim.sh
sh ./install_git.sh

ln -s $this_dir/bash_zhongming_Ubuntu ~/.bash_zhongming
ln -s $this_dir/completion ~/.zhongming_completion
echo << EOF >> ~/.bashrc
if [ -f ~/.bash_zhongming ]: then
    . ~/.bash_zhongming
fi
EOF

echo "
Symlinks:
    ~/.bash_zhongming           =>  $this_dir/bash_zhongming_Ubuntu
    ~/.zhongming_completion/    =>  $this_dir/completion/
"
