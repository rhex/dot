[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc" # Load the default .bashrc
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
# export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\W\[\033[00m\]\$ '
# export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:$ '
# this is actually the default address of go
#export GOPATH=$HOME/go
#export PATH=$PATH:$GOPATH/bin

[ -r "$HOME/.smartcd_config" ] && ( [ -n $BASH_VERSION ] || [ -n $ZSH_VERSION ] ) && source ~/.smartcd_config
# export JAVA_HOME=:~/software/jdk-10.0.2
# export PATH=$PATH:$JAVA_HOME/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export HISTCONTROL=ignoreboth

[[ -s "$HOME/.bash_it.sh" ]] && source "$HOME/.bash_it.sh"
