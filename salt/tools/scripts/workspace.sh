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

	# (3) load ssh keys
	tmux new-window -t $SNAME -n Load-ssh-keys
	tmux send-keys -t $SNAME:3  'load-ssh-keys.sh' C-m

	# (4) Login Config Node
	tmux new-window -t $SNAME -n Config-Node
	tmux send-keys -t $SNAME:4  'ssh ubuntu@192.168.250.20' C-m

	# (5) Login Keystone Node
	tmux new-window -t $SNAME -n Keystone-Node
	tmux send-keys -t $SNAME:5  'ssh ubuntu@192.168.250.11' C-m

	# (5) Login Network Node
	tmux new-window -t $SNAME -n Network-Node
	tmux send-keys -t $SNAME:6  'ssh ubuntu@192.168.250.6' C-m
	
	# Start out on the BlOG window when we attach
	tmux select-window -t:2

fi

tmux attach -t $SNAME
