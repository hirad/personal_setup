#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="/Users/hiradmotamed/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh

# config from old bash_profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=$PATH:$HOME/bin
export EDITOR='/usr/local/bin/mvim'

{ eval `ssh-agent`; ssh-add -A; } &> /dev/null


# added by Anaconda2 4.4.0 installer
export PATH="$PATH:/Users/hiradmotamed/anaconda/bin"

# added while setting up stack
export PATH="$PATH:$HOME/.local/bin"

# The direnv plugin in the bash_it directory is not running for some reason so I'm enabling direnv here.
[ -x "$(which direnv)" ] && eval "$(direnv hook bash)"
