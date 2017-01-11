#!/bin/bash

echo "set vim configuration"
cp -r .vim ~/
if [ -f ~/.vimrc ]; then
    echo "remove the existing ~/.vimrc"
    rm -rf ~/.vimrc
fi

ln -s ~/.vim/.vimrc ~/.vimrc
vim +PluginInstall +qall

