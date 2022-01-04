#!/bin/bash

# copy vim
tar xzf vim_env.tar.gz
cp  -r -i ./.vim ~ 
cp  -r -i ./.vim ~ 

rm  -i ./.vimrc 
rm  -i ./.vimrc 

# copy zsh
tar xzf zshrc_env.tar.gz 
cp  -r -i ./.oh-my-zsh ~
cp  -i ./.zshrc ~

rm  -r -i ./.oh-my-zsh
rm  -i ./.zshrc




