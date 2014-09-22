#!/bin/bash
#
# The MIT License (MIT)
# Copyright (c) 2014 fishcried(tianqing.w@gmail.com)
#

SNAME=$USER

tmux has-session -t $SNAME

if [ $? != 0 ]
then
	# (1)WIN
	tmux new-session -s $SNAME -n WIN -d
	tmux send-keys -t $SNAME:1 'win7' C-m

	# (2/1)BLOG/Jekyll server
	tmux new-window -t $SNAME -n BLOG
	tmux send-keys -t $SNAME:2  'jump blog && jekyll server -D --watch' C-m
	# (2/2)BLOG/Jekyll Editor
	tmux split-window -v -t $SNAME:2
	tmux send-keys  -t $SNAME:2.2 'jump blog' C-m

	# (3)
	tmux new-window -t $SNAME -n Load-ssh-keys
	tmux send-keys -t $SNAME:3  'load-ssh-keys.sh' C-m
	
	# Start out on the BlOG window when we attach
	tmux select-window -t $SNAME

fi

tmux attach -t $SNAME
