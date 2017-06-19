if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

## ENVIRONMENT VARIABLE
## pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

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
elif [ "$(uname)" == 'Darwin' ]; then
  echo "MacOS: .bash_profile"
  ## When You delete JDK and upgrade you should delete /Library/Java/JavaVirtualMachines/jdk<VERSION>.jdk
  export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
  ## SDKMAN
  #THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
  export SDKMAN_DIR="/Users/shinyay/.sdkman"
  [[ -s "/Users/shinyay/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/shinyay/.sdkman/bin/sdkman-init.sh"
fi
