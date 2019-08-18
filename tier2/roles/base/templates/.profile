# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export EDITOR="vim"

export SYSTOOLS_BACKUPS_S3_ENDPOINT={{ SYSTOOLS_BACKUPS_S3_ENDPOINT }}
export SYSTOOLS_BACKUPS_S3_REGION={{ SYSTOOLS_BACKUPS_S3_REGION }}
export SYSTOOLS_BACKUPS_S3_BUCKET={{ SYSTOOLS_BACKUPS_S3_BUCKET }}

alias l='ls -alh'
alias c='clear'
alias ..='cd ..'
alias cat='bat '

source $HOME/.credentials
