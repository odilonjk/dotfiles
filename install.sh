#!/bin/bash

echo "Updating system..."
sudo apt-get update -y
sudo apt-get upgrade -y

if ! type curl >/dev/null 2>/dev/null;then
	echo "Installing Curl..."
	sudo apt-get install curl -y
fi

if ! type vim >/dev/null 2>/dev/null; then
	echo "Installing Vim..."
	sudo apt-get install vim -y
	mkdir -p ~/.vim/autoload ~/.vim/bundle && \                          
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
        git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim
fi

if ! type git >/dev/null 2>/dev/null; then
	echo "Installing Git..."
	sudo apt-get install git -y
fi

if ! type zsh >/dev/null 2>/dev/null; then
	echo "Installing Zsh..."
	sudo apt-get install zsh -y
fi

echo "Copying dotfiles to $USER home directory..."
cp .zshrc /home/$USER
cp .gitconfig /home/$USER
cp .vimrc /home/$USER
