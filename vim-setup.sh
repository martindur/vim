#!/bin/bash

## Get the full version of vim

sudo apt remove --assume-yes vim-tiny
sudo apt update
sudo apt install --assume-yes vim

## Setup Vundle and add custom .vimrc file

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc


## Install plugins from .vimrc file

vim +PluginInstall +qall


## Pre-requisits for YouCompleteMe auto-completion engine
sudo apt install build-essential cmake vim python3-dev
python3 ~/.vim/bundle/YouCompleteMe/install.py --all

