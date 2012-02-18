export PATH=$HOME/bin:/usr/local/bin:$HOME/.cabll/bin:$PATH
export GISTY_DIR="$HOME/work/gists"
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
alias ls='ls -G'
alias ll='ls -al'
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
