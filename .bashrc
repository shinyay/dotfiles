## PROMPT
source ${HOME}/dotfiles/git-contrib/git-prompt.sh
source ${HOME}/dotfiles/git-contrib/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[0;33m\]\w/ \[\033[1;30m\]\t \[\033[1;32m\]$(__git_ps1 "[%s]")\[\033[0m\] $ '
# \w: current directory with path
# \W: current directory without path
# \t: current time

## ENVIRONMENT VARIABLE
if [ "$(uname)" == 'MSYS_NT-6.1' ]; then
  echo "MSYS2 Configuration"
elif [ "$(uname)" == 'Darwin' ]; then
  echo "MacOS Configuration"
  export HOMEBREW_CASK_OPTS='--appdir=/Applications'
fi
