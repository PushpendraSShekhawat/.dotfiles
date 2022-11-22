#!/bin/bash

<<<<<<< HEAD
rm -f ~/.vimrc
E=""
VAR="source ~/.dotfiles/bashrc_custom"
sed -i "s|source ~/.dotfiles/bashrc_custom| |g" ~/.bashrc
=======
rm -f ~/.vimrc                          #Removes the .vimrc file from the home directory forcibly.
EMPTY=""                                
VAR="source ~/.dotfiles/bashrc_custom"
sed -i "s|$VAR|$EMPTY|p" ~/.bashrc      #Removes lines containing 'source ~/.dotfiles/bashrc_custom' from .bashrc located in the home directory.
>>>>>>> ce552c8f2ff226e49121fd9f058bd11974705e40

rm -r ~/.TRASH                          #Removes a directory called .TRASH from the home directory.
