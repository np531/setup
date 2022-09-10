#!/bin/bash
# -d to just pull dotfiles and clone vim config

distribution=$(cat /etc/*-release | uniq -u | head -n 1 | grep -Eo "[^=]*$")

if [ "$1" != "-d" ] ; then
	echo "=== Installing uequired packages, updating system... ==="
	if [ "$distribution" == "Ubuntu" ] ; then
		sudo apt -y update
		sudo apt -y upgrade
		sudo apt-get install gvim git exa -y
	elif [ "$distribution" == "Arch" ] ; then
		sudo pacman -S gvim git exa
	else 
		echo "Can't detect distro, skipping package installs..."
		echo "Please manually install gvim and git from your distro's package manager"
	fi
fi

echo "=== Pulling dotfiles from repo ==="
curl https://raw.githubusercontent.com/np531/setup/main/.vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/np531/setup/main/.bash_aliases > ~/.bash_aliases
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "=== Downloading plugins... ==="
vim +PluginInstall +qall

