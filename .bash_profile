if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

## ENVIRONMENT VARIABLE
## JDK
if [ "$(uname)" == 'MSYS_NT-6.1' ]; then
  echo "MSYS2: .bash_profile"
  export JAVA_HOME=/c/Java/jdk1.8.0_131
  export PATH=${JAVA_HOME}/bin:$PATH
elif [ "$(uname)" == 'MINGW64_NT-10.0' ]; then
  echo "MINGW64: .bash_profile"
  export JAVA_HOME=/c/Java/jdk1.8.0_131
  export PATH=${JAVA_HOME}/bin:$PATH
elif [ "$(uname)" == 'Darwin' ]; then
  echo "MacOS: .bash_profile"
## When You delete JDK and upgrade you should delete /Library/Java/JavaVirtualMachines/jdk<VERSION>.jdk
  export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/syanagih/.sdkman"
[[ -s "/home/syanagih/.sdkman/bin/sdkman-init.sh" ]] && source "/home/syanagih/.sdkman/bin/sdkman-init.sh"
