#!/bin/bash

echo "set vim configuration"
cp -r .vim ~/
if [ -f ~/.vimrc ]; then
    echo "remove the existing ~/.vimrc"
    rm -rf ~/.vimrc
fi

ln -s ~/.vim/.vimrc ~/.vimrc
#vim +PluginInstall +qall
nvim +PluginInstall +qall

echo "install syntax for matlab"
cp .vim/syntax/matlab.vim ~/.vim/syntax/

echo "install indent for matlab"
cp .vim/indent/matlab.vim ~/.vim/indent/

echo "set nvim configuration"
cp -r .vim/* ~/.config/nvim
cp -r .vim/init.vim ~/.config/nvim/init.vim
cp -r .vim/airline/afterglow.vim ~/.vim/bundle/vim-airline/autoload/airline/themes
cp -r .vim/.ycm_extra_conf.py ~/.config/nvim
