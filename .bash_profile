if [ -f ~/.bashrc ]; then . ~/.bashrc; fi 
export CLICOLOR=yes
color_prompt=yes
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
export EDITOR="vim"
export VISUAL="vim"
export PATH="/usr/local/sbin:$PATH"
