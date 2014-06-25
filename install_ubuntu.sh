#!/bin/sh

sudo apt-get install build-essential git curl ruby perl vim-gnome tree

# Install gvim, set up vimrc and .vim/
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/vim-scripts/taglist.vim.git 
git clone https://github.com/scrooloose/nerdtree.git 
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/Shougo/neocomplete.vim.git 
git clone https://github.com/Shougo/neosnippet.vim.git 
git clone https://github.com/Shougo/neosnippet-snippets.git 
git clone https://github.com/Lokaltog/vim-easymotion.git 
cd -
