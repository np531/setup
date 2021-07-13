#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='exa -lahg --group-directories-first'

# SSH keychain (Stores SSH password for current session)  
# eval $(keychain --eval --quiet id_rsa)

PS1='[\u@\h \W]\$ '
