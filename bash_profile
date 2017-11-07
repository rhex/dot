[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.bash_alias" ]] && source "$HOME/.bash_alias"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function tabname {
  printf "\e]1;$1\a"
}
 
function winname {
  printf "\e]2;$1\a"
}

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '
export GOPATH=$HOME/dev/gopath
export PATH=$PATH:$GOPATH/bin
