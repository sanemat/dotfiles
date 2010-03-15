# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#if [ -z "$STY" ]; then
#  exec screen -dR
#fi
PS1='\033k\033\\[\u@\h \W]\$ '
