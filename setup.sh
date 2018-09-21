#!/bin/bash

TAB_SIZE=4

# Tab Size

echo "" > .vimrc

echo "set tabstop=${TAB_SIZE}" >> .vimrc
echo "set shiftwidth=${TAB_SIZE}" >> .vimrc
echo "set softtabstop=${TAB_SIZE}" >> .vimrc
echo "set expandtab" >> .vimrc
echo "" >> .vimrc

# Auto Indent
echo "set autoindent" >> .vimrc
echo "" >> .vimrc

# Builtin Syntax Color
echo "filetype plugin indent on" >> .vimrc
echo "set term=builtin_ansi" >> .vimrc
echo "syntax on" >> .vimrc

rm ~/.vimrc
cp `dirname '$0'`/.vimrc ~/.vimrc

echo "~/.vimrc file was changed successfully."
