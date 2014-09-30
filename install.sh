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

