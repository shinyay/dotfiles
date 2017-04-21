## PROMPT
source ${HOME}/.dotfiles/git-contrib/git-prompt.sh
source ${HOME}/.dotfiles/git-contrib/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[0;33m\]\w/ \[\033[1;30m\]\t \[\033[1;32m\]$(__git_ps1 "[%s]")\[\033[0m\] $ '
# \w: current directory with path
# \W: current directory without path
# \t: current time

## ENVIRONMENT VARIABLE
if [ "$(uname)" == 'MSYS_NT-6.1' ]; then
  echo "MSYS2: .bashrc"
elif [ "$(uname)" == 'MINGW64_NT-10.0' ]; then
  echo "MINGW64: .bashrc"
elif [ "$(uname)" == 'Darwin' ]; then
  echo "MacOS: .bashrc"
  export HOMEBREW_CASK_OPTS='--appdir=/Applications'
fi

if [ -f ${HOME}/.bash_custom ]; then
  source ${HOME}/.bash_custom
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/syanagih/.sdkman"
[[ -s "/home/syanagih/.sdkman/bin/sdkman-init.sh" ]] && source "/home/syanagih/.sdkman/bin/sdkman-init.sh"
