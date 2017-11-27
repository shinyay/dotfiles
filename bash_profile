if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

## ENVIRONMENT VARIABLE
## pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
## virtualenv
#eval "$(pyenv virtualenv-init -)"

if [ "$(uname)" == 'MSYS_NT-6.1' ]; then
  echo "MSYS2: .bash_profile"
  export JAVA_HOME=/c/Java/jdk1.8.0_131
  export PATH=${JAVA_HOME}/bin:$PATH
elif [ "$(uname)" == 'MINGW64_NT-10.0' ]; then
  echo "MINGW64: .bash_profile"
  export JAVA_HOME=/c/Java/jdk1.8.0_131
  export PATH=${JAVA_HOME}/bin:$PATH
  ## SDKMAN
  #THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
  export SDKMAN_DIR="/home/syanagih/.sdkman"
  [[ -s "/home/syanagih/.sdkman/bin/sdkman-init.sh" ]] && source "/home/syanagih/.sdkman/bin/sdkman-init.sh"
fi
