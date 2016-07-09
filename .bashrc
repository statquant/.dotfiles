# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ll='ls -lrthA --group-directories-first'
# Lines added by the Vim-R-plugin command :RpluginConfig (2014-Feb-16 18:43):
# Change the TERM environment variable (to get 256 colors) and make Vim
# connecting to X Server even if running in a terminal emulator (to get
# dynamic update of syntax highlight and Object Browser):

# 2014-10-05 the following bash code is not working, I want this because my GUIless vim 
# is not built with the +server option
if [ "x$DISPLAY" != "x" ]
then
	if [ "screen" = "$TERM" ]
	then
		export TERM=screen-256color
	else
		export TERM=xterm-256color
	fi
	alias vim='vim --servername VIM'
fi
#	alias vim="vim --servername VIM"
#	if [ "$TERM" == "xterm" ] || [ "$TERM" == "xterm-256color" ]
#	then
#		function tvim(){ tmux -2 new-session "TERM=screen-256color vim --servername VIM $@" ; }
#	else
#		function tvim(){ tmux new-session "vim --servername VIM $@" ; }
#	fi
#else
#	if [ "$TERM" == "xterm" ] || [ "$TERM" == "xterm-256color" ]
#	then
#		export HAS_256_COLORS=yes
#		alias tmux="tmux -2"
#		function tvim(){ tmux -2 new-session "TERM=screen-256color vim $@" ; }
#	else
#		function tvim(){ tmux new-session "vim $@" ; }
#	fi
#fi
#if [ "$TERM" = "screen" ] && [ "$HAS_256_COLORS" = "yes" ]
#then
#	export TERM=screen-256color
#fi
PATH=$PATH:/usr/local/texlive/2014/bin/x86_64-linux:$HOME/Build/vim/bin:$HOME/Build/openblas:$HOME/Build/R/bin

#2015-05-02 For citrix client on linux
export ICAROOT=/home/statquant/Build/citrix
