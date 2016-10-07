#!/bin/bash
git clone https://github.com/gmarik/Vundle.vim.git ~/vimfiles/bundle/Vundle.vim
git clone https://github.com/dphuang2/dotfiles.git ~/dotfiles
copy %USERPROFILE%\dotfiles\vimrc-pc ~/_vimrc
