# General
export EDITOR=vim
set -o vi

# Search history
function hgrep() { history|`which grep` $@|grep -v hgrep; }
# Running processes
function psgrep() { ps -ef|`which grep` $@|grep -v hgrep; }

# Get aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Login local configuration and settings
if [ -f ~/.bash_login ]; then
  . ~/.bash_login
fi

# Non-login local configuration and settings
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -f ~/.git-copmletion.bash ]; then
  . ~/.git-completion.bash
fi

function awsprofile() { export AWS_DEFAULT_PROFILE=$@; }
if command -v aws > /dev/null; then
  complete -C `which aws_completer` aws
fi

_apex()  {
  COMPREPLY=()
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local opts="$(apex autocomplete -- ${COMP_WORDS[@]:1})"
  COMPREPLY=( $(compgen -W "${opts}" -- ${cur})  )
  return 0
}

complete -F _apex apex

# Machine-specific setup below

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# export PYTHONPATH=`brew --prefix`/lib/python2.7/site-packages:$PYTHONPATH

eval "$(rbenv init -)"

export HOMEBREW_CASK_OPTS=--caskroom=/opt/homebrew-cask/Caskroom

export PATH=node_modules/.bin:$HOME/go/bin:$PATH:$HOME/bin

# Don't commit below this line
