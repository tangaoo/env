#!/bin/bash

# copy vim
cp  -r -f ~/.vim ./
cp  -f ~/.vimrc ./
tar czf vim_env.tar.gz .vim/ .vimrc
rm  -r -f .vim 
rm  -f .vimrc 

# copy zsh
cp  -r -f ~/.oh-my-zsh ./
cp  -f ~/.zshrc ./
tar czf zshrc_env.tar.gz .oh-my-zsh/ .zshrc
rm  -r -f .oh-my-zsh 
rm  -f .zshrc 

