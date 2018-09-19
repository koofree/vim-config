#!/bin/bash

TAB_SIZE=4

# Tab Size
echo "set tabstop=${TAB_SIZE}" >> .vimrc
echo "set shiftwidth=${TAB_SIZE}" >> .vimrc
echo "set softtabstop=${TAB_SIZE}" >> .vimrc
echo "set expandtab" >> .vimrc

# Auto Indent
echo "set autoindent" >> .vimrc

rm ~/.vimrc
cp `dirname '$0'`/.vimrc ~/.vimrc

echo "~/.vimrc file was changed successfully."
