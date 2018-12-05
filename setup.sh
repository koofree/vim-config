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
echo "" >> .vimrc

# Add Plugin Manager
echo "call plug#begin('~/.vim/plugged')" >> .vimrc
echo "Plug 'junegunn/vim-easy-align'" >> .vimrc
echo "Plug 'https://github.com/junegunn/vim-github-dashboard.git'" >> .vimrc
echo "Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'" >> .vimrc
echo "Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }" >> .vimrc
echo "Plug 'tpope/vim-fireplace', { 'for': 'clojure' }" >> .vimrc
echo "Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }" >> .vimrc
echo "Plug 'fatih/vim-go', { 'tag': '*' }" >> .vimrc
echo "Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }" >> .vimrc
echo "Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }" >> .vimrc
echo "Plug '~/my-prototype-plugin'" >> .vimrc
echo "call plug#end()" >> .vimrc

rm ~/.vimrc
cp `dirname '$0'`/.vimrc ~/.vimrc

echo "~/.vimrc file was changed successfully."
