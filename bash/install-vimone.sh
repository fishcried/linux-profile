#!/bin/bash
#
# The MIT License (MIT)
# Copyright (c) 2014 fishcried(tianqing.w@gmail.com)
#

vimone=~/.vim/bundle/vim-one/bin/onevim
export VIM_APP_DIR=/usr
if [ -x $vimone ];then
	export  VIM_APP_DIR=/usr/bin
	[ ! -e $HOME/Bin/vime ] && ln -s $vimone $HOME/Bin/vime
	[ ! -e $HOME/Bin/vimv ] && ln -s $vimone $HOME/Bin/vimv
	[ ! -e $HOME/Bin/vims ] && ln -s $vimone $HOME/Bin/vims
	[ ! -e $HOME/Bin/vimt ] && ln -s $vimone $HOME/Bin/vimt
fi
