#!/bin/sh

sudo add-apt-repository -y ppa:xorg-edgers/ppa
sudo apt-get update
sudo apt-get install build-essential git curl ruby perl vim-gnome tree \
	python-numpy python-matplotlib python-scipy ipython \
	python3-numpy python3-matplotlib python3-scipy ipython3 \
	libfftw3-dev ctags astyle cscope flex bison
sudo apt-get install nvidia-current
sudo apt-get upgrade

sh ./install_vim.sh

echo ". ~/.bash_zhongming" >> ~/.bashrc
cp bash_zhongming_Linux ~/.bash_zhongming

sudo apt-get install steam -y
