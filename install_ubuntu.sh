#!/bin/sh

sudo apt-get update
sudo apt-get install build-essential git curl ruby perl vim-gnome tree \
	python-numpy python-matplotlib python-scipy ipython \
	python3-numpy python3-matplotlib python3-scipy ipython3 \
	libfftw3-dev
sudo apt-get upgrade

sh ./install_vim.sh

echo "source ~/.bash_zhongming" >> ~/.bashrc

cp bash_zhongming_ubuntu ~/.bash_zhongming
