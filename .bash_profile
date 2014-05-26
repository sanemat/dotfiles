# # Source global definitions
#if [ -f /usr/share/doc/git-1.6.6.1/contrib/completion/git-completion.bash ]; then
#      source /usr/share/doc/git-1.6.6.1/contrib/completion/git-completion.bash
#fi
# if [ -f $HOME/dotfiles/.bash_profile ]; then
#     source $HOME/dotfiles/.bash_profile
# fi
# ==
# http://d.hatena.ne.jp/n9d/20090120/1232404797
# thanx hirocaster
function share_history {
  history -a
  history -c
  history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend
export HISTSIZE=530000
export HISTCONTROL=ignoreboth:erasedups

# Setting the title to the name of the running program
# Only execute in GNU Screen
if [ -n "$STY" ]; then
  export PS1='\033k\033\\[\u@\h \W]\$ '
fi

alias rurima='rurema'
alias g='git'
function t() {
  termtter -c -r "$@"
}

# Mac OSX using sjis. It's crazy.
export _JAVA_OPTIONS="-Dfile.encoding=UTF-8"

alias ls="ls -G"
alias ll="ls -hl"
alias be='bundle exec'
alias npm-exec='PATH=$(npm bin):$PATH'
alias ne='npm-exec'
alias svngrep="svn grep"
alias rvenv='rbenv'
alias zues='zeus'
alias zuse='zeus'
alias zese='zeus'
alias pup="plackup -MPlack::App::Directory -e 'Plack::App::Directory->new({root=>\".\"})->to_app' -p 4000"
alias rup="rackup -b \"run Rack::Directory.new('.')\" -p 9494"
alias bep='be pry -r ./config/environment'
alias dl='docker ps -l -q'
alias gosh="rlwrap -b '(){}[],#\";| ' gosh"
git() {
  if [[ $1 = stauts ]]
  then
    shift
    command git status "$@"
  else
    command git "$@"
  fi
}
svn() {
  if [[ $1 = stauts ]]
  then
    shift
    command svn status "$@"
  elif [[ $1 = grep ]]
  then
    shift
    command grep --exclude='*.svn-*' --exclude='entries' "$@"
  else
    command svn "$@"
  fi
}
