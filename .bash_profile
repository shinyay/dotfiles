if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

## ENVIRONMENT VARIABLE
## JDK
#When You delete JDK and upgrade you should delete /Library/Java/JavaVirtualMachines/jdk<VERSION>.jdk
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

## SDKMAN
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/shinyay/.sdkman"
[[ -s "/Users/shinyay/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/shinyay/.sdkman/bin/sdkman-init.sh"

## pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
