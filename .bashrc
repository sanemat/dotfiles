# # Source global definitions
# if [ -f /etc/bashrc ]; then
#     . /etc/bashrc
# fi
#if [ -f /usr/share/doc/git-1.6.6.1/contrib/completion/git-completion.bash ]; then
#      source /usr/share/doc/git-1.6.6.1/contrib/completion/git-completion.bash
#fi
# if [ -f $HOME/dotfiles/.bashrc ]; then
#     source $HOME/dotfiles/.bashrc
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
export HISTSIZE=300000

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

alias be='bundle exec'
alias svngrep="svn grep"
alias rvenv='rbenv'
alias zues='zeus'
alias zuse='zeus'
alias zese='zeus'
alias pup="plackup -MPlack::App::Directory -e 'Plack::App::Directory->new({root=>\".\"})->to_app' -p 4000"
alias bep='be pry -r ./config/environment'
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
