#!/bin/bash

distribution=$(cat /etc/*-release | uniq -u | head -n 1 | grep -Eo "[^=]*$")

echo "=== Installing vim... ==="
if [ "$distribution" == "Ubuntu" ] ; then
	sudo apt -y update
	sudo apt -y upgrade
	sudo apt-get install gvim git -y
elif [ "$distribution" == "Arch" ] ; then
	sudo pacman -S gvim git

echo "=== Pulling dotfiles from repo ==="
curl https://raw.githubusercontent.com/np531/setup/main/.vimrc > ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "=== Downloading plugins... ==="
vim +PluginInstall +qall

