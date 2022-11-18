#!/bin/bash


OS=$(uname)
if (($OS == "Linux")); then
	mkdir -p ~/.TRASH
	FILE=~/.vimrc
	if [ -f $FILE ]; then
		mv ~/.vimrc ~/.bup_vimrc
	fi
else
	echo "ERROR - The operating system type is not Linux." >> linuxsetup.log
	exit
fi

echo ".vimrc has been changed to .bup_vimrc" >> linuxsetup.log
touch ~/.vimrc
cat ~/.dotfiles/etc/vimrc > ~/.vimrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

