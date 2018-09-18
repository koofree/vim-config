#!/bin/bash

TAB_SIZE=4


echo "set tabstop=${TAB_SIZE}" >> .vimrc
echo "set shiftwidth=${TAB_SIZE}" >> .vimrc
echo "set softtabstop=${TAB_SIZE}" >> .vimrc
echo "set expandtab" >> .vimrc

rm ~/.vimrc
cp `dirname '$0'`/.vimrc ~/.vimrc