# About
This is a collection of files and scripts that I use to setup my environment on a new installation. 
Currently only sets up my Vim keybindings (which is all I need :) ). In the future I will expand it to download basic packages and scripts that may be useful.

# Installation
1. Download the vim.sh script from this repo

``$ wget https://raw.githubusercontent.com/np531/setup/main/vim.sh``

2. If you don't have the required packages (gvim, git, vundle) then run the script as follows:

``$ ./vim.sh new``

3. Otherwise, ``./vim.sh`` will simply pull my vimrc from this repo and install the plugins

# Todo
*Implement cmd line argument to choose package manager (currently only supports pacman)
