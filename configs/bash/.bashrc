# .bashrc

# vim style
# To see bindings, run "bind -P"
set -o vi
set show-mode-in-prompt on
set vi-cmd-mode-string "\1\e[2 q\2"
set vi-ins-mode-string "\1\e[6 q\2"
set editing-mode vi

# aliases
alias ll="ls -lh"
alias la="ls -lha"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
