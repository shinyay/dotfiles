if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

## ENVIRONMENT VARIABLE
## JDK
## When You delete JDK and upgrade you should delete /Library/Java/JavaVirtualMachines/jdk<VERSION>.jdk
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
