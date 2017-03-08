#!/bin/bash

## Install programs
echo "install programs for osx"
echo "list: brew, python, tmux, cmake, coreutils"

echo "install brew"
which -s brew
if [[ $? != 0 ]] ; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "brew is installed. checking the version:"
    brew -v
fi

# install python
echo "install python"
which -s python
if [[ $? != 0 ]] ; then
    brew install python
else
    echo "python is installed. checking the version:"
    python -V
fi

# install tmux
echo "install tmux"
which -s tmux
if [[ $? != 0 ]] ; then
    brew install tmux
else
    echo "tmux is already installed. checking the version:"
    tmux -V
fi

echo "install cmake"
which -s cmake
if [[ $? != 0 ]] ; then
    brew install cmake
else
    echo "cmake is already installed. checking the version:"
    cmake --version
fi

echo "install coreutils"
which -s dircolors
if [[ $? != 0 ]]; then
    brew install coreutils
else
    echo "dircolors is already installed. checking the version:"
fi

echo "install oh-my-zsh"
which -s zsh
if [[ $? != 0 ]]; then
    brew install zsh zsh-completions
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo "zsh is already installed. checking the version:"
    zsh --version
fi
chsh -s $(which -s zsh)

## Install modules
echo "install modules for osx"
echo "list: powerline"

# install powerline-status
echo "install powerline-status"
IS_INSTALLED=$(pip show powerline-status | grep powerline-status | wc -l)
if [ $IS_INSTALLED < 1 ]; then
    sudo pip install https://github.com/Lokaltog/powerline/tarball/develop
else
    echo "powerline-status is already installed. chkecing the version:"
    pip show powerline-status | grep powerline-status
fi

# install tmux-mem-cpu-load
echo "install tmux-mem-cpu-load"
MPWD=$(pwd)
cd .tmux/vendor/tmux-mem-cpu-load
cmake .
make
make install
cd $MPWD
sudo cp .powerline/powerline.conf $POWERLINE_HOME/bindings/tmux # powerline.conf is modified for tmux-mem-cpu-load

# install dir_colors
echo "install .dir_colors"
cp -r ./.dir_colors ~/

# install sh configurations
echo "install sh configurations (bash, zsh (default))"
cp .sh/.bash_profile ~/.bash_profile
cp .sh/.bash_aliases ~/.bash_aliases
cp .sh/.bash_path ~/.bash_path
cp .sh/.zshrc ~/.zshrc
zsh source ~/.zshrc

# install tmux configuration
echo "install tmux configuration"
cp -r .tmux ~/
if [ -f ~/.tmux.conf ]; then
    echo "remove existing ~/.tmux.conf"
    rm ~/.tmux.conf
fi
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

# install powerline-status configuration
echo "install powerline configuration"
cp -r .powerline/* ~/.config/powerline
powerline-daemon -r

# install ctag configuration
echo "install ctag configuration"
cp .ctags ~/.ctags
