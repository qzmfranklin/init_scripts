#!/bin/sh

sudo add-apt-repository -y ppa:xorg-edgers/ppa
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install -y \
	build-essential git curl ruby perl vim-gnome tree subversion
#sudo apt-get install -y \
	#python3-numpy python3-matplotlib python3-scipy ipython3
#sudo apt-get install -y \
	#python-numpy python-matplotlib python-scipy ipython
#sudo apt-get install -y \
	#libfftw3-dev ctags astyle cscope flex bison
#sudo apt-get install -y \
	#nvidia-current
sudo apt-get install -y \
	unity-tweak-tool gnome-tweak-tool
sudo apt-get upgrade

# Install gcc49, config to using gcc49
#sudo apt-get install -y gcc-4.9
#sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 20
#sudo update-alternatives --config gcc

sh ./install_vim.sh

# Install Ubuntu Tweak to enable fancy workspace
sh ./install_ubuntu_tweak.sh

# Color scheme for both the mac terminal and vim
cd ~/.vim/bundle
git clone https://github.com/hukl/Smyck-Color-Scheme.git
cd -

sh ./install_git.sh
source ~/.git_bash_completion

echo ". ~/.bash_zhongming" >> ~/.bashrc
cp bash_zhongming_Linux ~/.bash_zhongming

#sudo apt-get install steam -y
