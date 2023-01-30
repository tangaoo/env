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
else
		# copy vim
		tar xzf vim_env.tar.gz
		cp  -r -f ./.vim ~ 
		cp  -f ./.vimrc ~ 
fi

# do clean
rm  -r -f ./.vim 
rm  -f ./.vimrc 


echo -n "是否需要安装zsh？y/n: "
read input
if [ $input = "y" ]; then
	sudo apt install zsh
	sudo apt install global
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
else
	# copy zsh
	tar xzf zshrc_env.tar.gz 
	cp  -r -f ./.oh-my-zsh ~
	cp  -f ./.zshrc ~
fi


rm  -r -f ./.oh-my-zsh
rm  -f ./.zshrc

chsh -s /bin/zsh
echo -n "安装完成，重新登陆系统"


