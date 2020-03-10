#!/bin/bash

DOT_FILES=(.vimrc .vim .tmux.conf)

for file in ${DOT_FILES[@]}
do
    rm -rf $HOME/$file
    ln -s $HOME/dotfiles/$file $HOME/$file
done
