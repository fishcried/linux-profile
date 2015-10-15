#!/bin/bash
#
# The MIT License (MIT)
# Copyright (c) 2014 fishcried(tianqing.w@gmail.com)
#



function load_openstack()
{
	local workspace=${FUNCNAME##*_}

	tmux has-session -t $workspace
	if [ $? != 0 ]; then
		# (1) load ssh keys
		tmux new-session -s $workspace -n Load-ssh-keys -d
		tmux send-keys -t $workspace:1  'load-ssh-keys.sh' C-m

		# (2) Login Config Node
		tmux new-window -t $workspace -n Config-Node
		tmux send-keys -t $workspace:2  'ssh ubuntu@192.168.250.20' C-m

		# (3) Login Keystone Node
		tmux new-window -t $workspace -n Keystone-Node
		tmux send-keys -t $workspace:3  'ssh ubuntu@192.168.250.11' C-m

		# (4) Login Network Node
		tmux new-window -t $workspace -n Network-Node
		tmux send-keys -t $workspace:4  'ssh ubuntu@192.168.250.16' C-m

		tmux select-window -t $workspace:2
	fi
}

function load_working()
{
	local workspace=${FUNCNAME##*_}

	tmux has-session -t $workspace

	if [ $? != 0 ]; then
		# (1)WIN
		tmux new-session -s $workspace -n Timer -d
		tmux send-keys -t $workspace:1  'timer' C-m

		# (2) Working
		tmux new-window -t $workspace -n Working

		tmux select-window -t $workspace:2
	fi
}

function load_blog() {
		
	local workspace=${FUNCNAME##*_}

	tmux has-session -t $workspace

	if [ $? != 0 ]; then
		# (1)blog server
		tmux new-session -s $workspace -n blog-server -d
		tmux send-keys -t $workspace:1 'blog-server draft' C-m

	fi
}

SPACES="working \
	    blog
        openstack"

if [ $# -eq 0 ];then
	for space in $SPACES
	do
		load_$space
	done
	tmux attach -t working
else
	for space in $*
	do
		load_$space
	done
	tmux attach -t $1
fi
