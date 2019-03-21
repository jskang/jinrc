#!/bin/sh
# copy the vimrc to main
cp .vimrc  ~/.vimrc
cat .vimrc_plugin >> ~/.vimrc

#install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#install plugins
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/majutsushi/tagbar
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/jistr/vim-nerdtree-tabs.git
git clone https://github.com/tpope/vim-surround
git clone https://github.com/altercation/vim-colors-solarized
git clone https://github.com/bling/vim-airline
git clone https://github.com/scrooloose/nerdcommenter
git clone https://github.com/ervandew/supertab
git clone https://github.com/tpope/vim-repeat
git clone https://github.com/xolox/vim-easytags.git
git clone https://github.com/xolox/vim-misc.git
git clone https://github.com/Vimjas/vim-python-pep8-indent

mkdir -p ~/.vim/after/syntax/
git clone https://github.com/octol/vim-cpp-enhanced-highlight.git ~/.vim/after/syntax
