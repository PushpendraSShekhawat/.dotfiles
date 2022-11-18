#!/bin/bash

rm -f ~/.vimrc
EMPTY=""
VAR="source ~/.dotfiles/bashrc_custom"
sed -i "s|$VAR|$EMPTY|p" ~/.bashrc

rm -r ~/.TRASH
