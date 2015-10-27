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
	local plugin_dir="$HOME/.tmux/plugins"

	LOG "Begin install tmux-plugin"
	if [ ! -e "$plugin_dir" ]; then
		mkdir -p $plugin_dir
	fi

	if [ ! -e "$plugin_dir/tpm" ]; then
		git clone https://github.com/tmux-plugins/tpm $plugin_dir/tpm
	else
		LOG "Tmux-plugin　has installed, just update"
		pushd $plugin_dir/tpm
		git pull origin master
		popd
	fi

	LOG "End install tmux-plugin"

	LOG "Begin config Tmux ..."
	$SYNC_DIR_S tmux/configs/ ~/.tmux/configs/
	mv ~/.tmux/configs/main.conf ~/.tmux.conf
	LOG "End config Tmux ..."

	LOG "Begin sync workspace profiles"
	$SYNC_DIR tmux/workspaces/ ~/.tmuxp/
	LOG "End sync workspace profiles"

}

config_scripts() {
	LOG "Begin config Scripts ..."
	$SYNC_DIR_S scripts/ $HOME/bin/
	chmod u+x $HOME/bin/*
	LOG "End config Scripts..."
}

config_ohmyz() {
	LOG "Begin config Vim ..."

	dpkg -l | grep -qw zsh || sudo apt-get install zsh
	[ ! -e "$HOME/.oh-my-zsh" ] && sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

	
	$SYNC_FILE ohmyz/zshrc $HOME/.zshrc

	LOG "End config Vim ..."
}

config_vim() {
	LOG "Begin config Vim ..."
	
	$SYNC_DIR  vim/date/ $HOME/.vim/
	$SYNC_FILE vim/vimrc $HOME/.vimrc

	LOG "End config Vim ..."
}

SYNC_FILE="rsync -vl"
SYNC_DIR="rsync -vlr"
SYNC_DIR_S="rsync -vlr --delete"

TARGETS="vim    \
		scripts \
		ohmyz   \
		tmux"

for t in $TARGETS
do

	if [ $t != "scripts" ] && [ $(which $t | grep -vi $t) ];then
		LOG "Error: $t not install, please install it."
		continue
	fi

	config_$t
done
