# {{{ envs

	export ZSH=$HOME/.oh-my-zsh
	export ZSH_THEME="steeef"
	export DISABLE_AUTO_TITLE="true"
	export HIST_STAMPS="mm/dd/yyyy"

	# PATH
	export PATH=$PATH:$HOME/bin

	# locale
	export LANG=en_US.UTF-8
	export LC_CTYPE=zh_CN.UTF-8
	# editor
	export EDITOR="vim"

	# python
	export WORKON_HOME=$HOME/.virtualenvs

	# ssh keys
	export SSH_KEY_PATH="~/.ssh/dsa_id"

	export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache_dir

# }}}

plugins=(git autojump colored-man sudo zsh_reload virtualenvwrapper virtualenv)


# {{{ source file
	source $ZSH/oh-my-zsh.sh
	# custom compelete
	[ -e /usr/local/bin/tmuxp.zsh ] && source /usr/local/bin/tmuxp.zsh
# }}}


# alias
alias vimblog="vim --servername BLOG --remote-silent"
alias vimone="vim --servername ONE --remote-silent"
