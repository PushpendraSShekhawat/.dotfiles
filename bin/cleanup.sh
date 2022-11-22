#!/bin/bash

rm -f ~/.vimrc
E=""
VAR="source ~/.dotfiles/bashrc_custom"
sed -i "s|source ~/.dotfiles/bashrc_custom| |g" ~/.bashrc

rm -r ~/.TRASH
