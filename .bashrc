# Setting the title to the name of the running program
# Only execute in GNU Screen
if [ -n "$STY" ]; then
export PS1='\033k\033\\[\u@\h \W]\$ '
fi
