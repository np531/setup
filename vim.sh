#!/bin/bash

if [ $# == 1 ]
then
	if [ $1 == "new" ]
	then
		echo "Installing vim..."
		sudo pacman -S gvim git
		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	   	wget https://raw.githubusercontent.com/np531/setup/main/.vimrc  ~/.vimrc
	fi
fi
	echo "Downloading plugins..."
	vim +PluginInstall +qall
