#!/bin/bash
# -f to install linux reqs

distribution=$(cat /etc/*-release | uniq -u | head -n 1 | grep -Eo "[^=]*$")

if [ "$1" != "-f" ] ; then
	echo "=== Installing uequired packages, updating system... ==="
	if [ "$distribution" == "Ubuntu" ] ; then
		sudo apt -y update
		sudo apt -y upgrade
		sudo apt-get install vim-gtk3 git exa -y
	elif [ "$distribution" == "Arch" ] ; then
		sudo pacman -S gvim git exa
	else 
		echo "Can't detect distro, skipping package installs..."
		echo "Please manually install gvim, git and exa from your distro's package manager"
	fi
fi

echo "=== Pulling dotfiles from repo ==="
curl https://raw.githubusercontent.com/np531/setup/main/.vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/np531/setup/main/.bash_aliases > ~/.bash_aliases
echo ". ~/.bash_aliases" >> ~/.bashrc

echo "=== Downloading plugins... ==="
vim +PluginInstall +qall
vim +CocInstall coc-tsserver coc-json coc-html coc-css coc-pyright +qall

