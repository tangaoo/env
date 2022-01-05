#!/bin/bash

if [ -e ~/.vimrc ]; then
	echo -n "已存在vim，是否覆盖？y/n: "
	read input
	if [ $input = "y" ]; then
		# copy vim
		tar xzf vim_env.tar.gz
		cp  -r -f ./.vim ~ 
		cp  -f ./.vimrc ~ 
	fi
fi

if [ -e ~/.zshrc ]; then
	echo -n "已存在zsh，是否覆盖？y/n: "
	read input
	if [ $input = "y" ]; then
		# copy zsh
		tar xzf zshrc_env.tar.gz 
		cp  -r -f ./.oh-my-zsh ~
		cp  -f ./.zshrc ~
	fi
fi

# do clean
rm  -r -f ./.vim 
rm  -f ./.vimrc 

rm  -r -f ./.oh-my-zsh
rm  -f ./.zshrc


