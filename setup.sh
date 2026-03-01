#!/bin/bash

# Designed for APT, update this line if using different package manager
sudo apt -y update && sudo apt -y upgrade
sudo apt install vim-gtk3 git eza npm curl -y


echo "=== Pulling dotfiles from repo ==="
curl https://raw.githubusercontent.com/np531/setup/main/.vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/np531/setup/main/.bash_aliases > ~/.bash_aliases
echo ". ~/.bash_aliases" >> ~/.bashrc

echo "=== Downloading plugins... ==="
vim +PluginInstall +qall
vim +CocInstall coc-tsserver coc-json coc-html coc-css coc-pyright +qall

