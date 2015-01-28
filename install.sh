#!/bin/bash
#
# The MIT License (MIT)
# Copyright (c) 2014 fishcried(tianqing.w@gmail.com)
#


LOG() {
	echo "$(date +'%Y/%m/%d %T')-> $@" 
}

config_firefox() {
	LOG "Begin config Firefox ..."
	$SYNC_FILE firefox/pentadactylrc $HOME/.pentadactylrc
	$SYNC_FILE firefox/vimperatorrc $HOME/.vimperatorrc
	LOG "End config  Firefox..."
}

config_bash() {
	LOG "Begin config Bash ..."
	$SYNC_FILE bash/git-completion.bash $HOME/.git-completion.bash
	$SYNC_FILE bash/bash_aliases $HOME/.bash_aliases
	$SYNC_FILE bash/install-vimone.sh $HOME/.install-vimone.sh
	$SYNC_FILE bash/bashrc $HOME/.bashrc
	. $HOME/.bashrc
	LOG "End config Bash ..."
}

config_tmux() {
	LOG "Begin config Tmux ..."
	$SYNC_FILE tmux/tmux.conf $HOME/.tmux.conf
	LOG "End config Tmux ..."

}

config_scripts() {
	LOG "Begin config Scripts ..."
	$SYNC_DIR scripts/ $HOME/Bin/
	chmod u+x $HOME/Bin/*
	LOG "End config Scripts..."
}

config_vim() {
	LOG "Begin config Vim ..."
	
	$SYNC_DIR  vim/date/ $HOME/.vim/
	$SYNC_FILE vim/vimrc $HOME/.vimrc

	LOG "End config Vim ..."
}

SYNC_FILE="rsync -vl"
SYNC_DIR="rsync -vlr"

TARGETS="vim    \
		scripts   \
		bash    \
		firefox \
		tmux"

for t in $TARGETS
do

	if [ $t != "scripts" ] && [ $(which $t | grep -vi $t) ];then
		LOG "Error: $t not install, please install it."
		continue
	fi

	config_$t
done


