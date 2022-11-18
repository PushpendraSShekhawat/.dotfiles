#!/bin/bash

rm -f ~/.vimrc                          #Removes the .vimrc file from the home directory forcibly.
EMPTY=""                                
VAR="source ~/.dotfiles/bashrc_custom"
sed -i "s|$VAR|$EMPTY|p" ~/.bashrc      #Removes lines containing 'source ~/.dotfiles/bashrc_custom' from .bashrc located in the home directory.

rm -r ~/.TRASH                          #Removes a directory called .TRASH from the home directory.
