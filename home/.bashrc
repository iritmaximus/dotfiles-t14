# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# bash prompt
PS1='\[\033[1;34m\]'
PS1+='['
PS1+='\w'
PS1+=']'
PS1+='\n\$\[\033[0m\] '
PS1+=''

# Put your fun stuff here.

alias ls='lsd -l'
alias ll='lsd'
alias cat='bat'
alias firefox='firefox-bin'
alias venv='source .venv/bin/activate'

# dvorak things
alias ,.='lsd -l'
alias ,,='lsd'
alias ..='lsd'
alias emacs='emacsclient --socket-name=/tmp/emacs$(id -u)/server -c -a "emacs"'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export FLYCTL_INSTALL="/home/martti/.fly"
export FLYCTL_INSTALL_BIN="$FLYCTL_INSTALL:/bin"
export LUA_EXEC_PATHS="/home/martti/.luarocks/bin:/usr/share/lua/5.1/bin"
export CARGO_BIN="/home/martti/.cargo/bin"
export LOCAL_BIN="/home/martti/.local/bin"
export PATH="$FLYCTL_INSTALL/bin:$LUA_EXEC_PATHS:$CARGO_BIN:$LOCAL_BIN:$PATH"

alias luamake=/usr/local/lib/lua-language-server/3rd/luamake/luamake
. "$HOME/.cargo/env"
