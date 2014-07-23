#!/bin/bash

# for bash config

function backup ()
{
	if [ -f $1 -o -d $1 ]; then
		mv $1 $1.bak
	elif [ -h $1 ];then
		rm $1
	fi
}
echo "Install bash configs"
[ -e ~/.bashrc.bak ] || backup ~/.bashrc
cat ~/.bashrc.bak $PWD/bash/bashrc > ~/.bashrc
. ~/.bashrc

# for vim
echo "Install vim configs"
backup ~/.vimrc
ln -s -T $PWD/vim/vimrc ~/.vimrc
backup ~/.vim
ln -s -T $PWD/vim ~/.vim

echo "Congratulations, install successful"
