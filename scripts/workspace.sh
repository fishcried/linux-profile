#!/bin/bash
#
# The MIT License (MIT)
# Copyright (c) 2014 fishcried(tianqing.w@gmail.com)
#



function openstack_workspace()
{
	SNAME=$1

	tmux has-session -t $SNAME
	if [ $? != 0 ]; then
		# (1) load ssh keys
		tmux new-session -s $SNAME -n Load-ssh-keys -d
		tmux send-keys -t $SNAME:1  'load-ssh-keys.sh' C-m

		# (2) Login Config Node
		tmux new-window -t $SNAME -n Config-Node
		tmux send-keys -t $SNAME:2  'ssh ubuntu@192.168.250.20' C-m

		# (3) Login Keystone Node
		tmux new-window -t $SNAME -n Keystone-Node
		tmux send-keys -t $SNAME:3  'ssh ubuntu@192.168.250.11' C-m

		# (4) Login Network Node
		tmux new-window -t $SNAME -n Network-Node
		tmux send-keys -t $SNAME:4  'ssh ubuntu@192.168.250.16' C-m

		tmux select-window -t $SNAME:2
	fi
}

function normal_worksapce()
{
	SNAME=$1

	tmux has-session -t $SNAME

	if [ $? != 0 ]; then
		# (1)WIN
		tmux new-session -s $SNAME -n WIN -d
		tmux send-keys -t $SNAME:1 'win7' C-m

		# (2/1)BLOG/Jekyll server
		tmux new-window -t $SNAME -n BLOG
		tmux send-keys -t $SNAME:2  'jump blog && jekyll server -D --watch -H 0.0.0.0' C-m
		# (2/2)BLOG/Jekyll Editor
		#tmux split-window -v -t $SNAME:2
		#tmux send-keys  -t $SNAME:2.2 'jump blog' C-m

		# (3) Timing
		tmux new-window -t $SNAME -n Timing
		tmux send-keys -t $SNAME:3  'time read' C-m

		# (4) Working
		tmux new-window -t $SNAME -n Working

		tmux select-window -t $SNAME:4
	fi
}

normal_worksapce fishcried
openstack_workspace openstack

tmux attach -t fishcried
