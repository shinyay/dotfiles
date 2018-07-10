# Variables

## Universal Variables
set -U FZF_LEGACY_KEYBINDINGS 0
set -U JAVA_HOME ( jenv javahome )

## Environment Variables
set -x HOMEBREW_CASK_OPTS '--appdir=/Applications'
set -x JENV_ROOT "$HOME/.jenv"

# SDKMAN
sdk help > /dev/null
