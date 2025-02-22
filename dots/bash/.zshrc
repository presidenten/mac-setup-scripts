# Set paths
CLONE=$HOME/mac-setup-and-scripts
DOTS=$CLONE/dots
LIBS=$DOTS/bash/lib

# Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"


# Setup powerlevel9k
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_SHOW_CHANGESET=true
# source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
ZSH_THEME=powerlevel10k/powerlevel10k
source $LIBS/powerlevel9k


# Setup zsh
ENABLE_CORRECTION="true"
export ZSH="$HOME/.oh-my-zsh"
plugins=(git svn svn-fast-info ssh-agent encode64 docker docker-compose)
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# Load addons
# -------------
# `copy-rsa-key-to-server name@server` and `generate-rsa-key name@server`
source $LIBS/ssh
# `git-log, git-diff`
source $LIBS/git
# `showFiles, hideFiles, ls-dots`
source $LIBS/hidden-files
# Syntax highlighting for less
source $LIBS/less-syntax-highlight
# Extra options for ls
source $LIBS/ls
# Boot up nvm
source $LIBS/nvm
# Set python3 as default
source $LIBS/python3
# Start code with `code .`, setup server for remote editing and alias for ssh to enable remote editing
source $LIBS/vscode
# Webstorm diff: `wdiff file1 file2`
source $LIBS/diff-through-webstorm
# Kubernetes
source $LIBS/kubectl
# Kubernetes
source $LIBS/fzf


# Include gnu versions first, lastly add script directories
export PATH="/usr/local/bin/:$PATH:$CLONE/scripts:$HOME/scripts"
