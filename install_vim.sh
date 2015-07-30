#!/bin/sh

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
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/justinmk/vim-syntax-extra.git
#git clone https://github.com/xolox/vim-easytags.git
git clone https://github.com/xolox/vim-misc.git
git clone https://github.com/flazz/vim-colorschemes.git
#git clone https://github.com/ntpeters/vim-better-whitespace.git
git clone https://github.com/elzr/vim-json.git
git clone https://github.com/peterhoeg/vim-qml.git
git clone https://github.com/wannesm/wmgraphviz.vim.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/autowitch/hive.vim.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q
git clone https://github.com/tpope/vim-unimpaired.git
cd -

if [ -f ~/.vimrc ]; then
  echo "~/.vimrc already exists, back up to ~/.vimrc.orig"
  mv ~/.vimrc ~/.vimrc.orig
fi

cp vimrc_`uname` ~/.vimrc

cp c.snip ~/.vim/bundle/neosnippet-snippets/neosnippets/
