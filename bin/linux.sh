#!/bin/bash


OS=$(uname)				#Assigns the function uname to a variable
if (($OS == "Linux")); then		#If the OS is Linux,
	mkdir -p ~/.TRASH			#then we make a .TRASH directory in the home directory
	FILE=~/.vimrc			
	if [ -f $FILE ]; then		#The .vimrc files exists in the home directory, then we change the name to ./bup_vimrc
		mv ~/.vimrc ~/.bup_vimrc
	fi
else					#If the OS is not Linux,
	echo "ERROR - The operating system type is not Linux." >> linuxsetup.log	#Then we add a message to our log
	exit
fi

echo ".vimrc has been changed to .bup_vimrc" >> linuxsetup.log		#We log that the .vimrc files has been changed
touch ~/.vimrc								
cat ~/.dotfiles/etc/vimrc > ~/.vimrc					#We overwrite the contents of our etc/vimrc file to our home directory .vimrc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc		#We write a line to the end of our .bashrc file

