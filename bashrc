[[ $- != *i* ]] && return

shopt -s checkwinsize

shopt -s histappend

safe_term=${TERM//[^[:alnum:]]/?}
match_lhs=""

[[ -f ~/.dir_colors ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs} ]] && type -P dircolors >/dev/null && match_lhs=$(dircolors --print-database)

if [[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] ; then
	if type -P dircolors >/dev/null ; then
		if [[ -f ~/.dir_colors ]] ; then
			eval $(dircolors -b ~/.dir_colors)
		elif [[ -f /etc/DIR_COLORS ]] ; then
			eval $(dircolors -b /etc/DIR_COLORS)
		fi
	fi
	alias ls="ls --color=auto"
	alias dir="dir --color=auto"
	alias grep="grep --colour=auto"
fi

PS1="$ "
PS2="> "
PS3="> "
PS4="+ "

unset safe_term match_lhs

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

[ -r /usr/share/doc/pkgfile/command-not-found.bash ] && . /usr/share/doc/pkgfile/command-not-found.bash

EDITOR=vim
set -o vi
stty -ixon
export ANDROID_HOME=$HOME/AndroidSDK
export PATH=$PATH:$HOME/.rvm/bin:$HOME/bin/nodejs/bin/:./node_modules/.bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$HOME/.local/bin:$HOME/bin:/opt/gradle/gradle-4.4/bin
export POWERLINE_COMMAND=powerline
export POWERLINE_CONFIG_COMMAND=powerline-config
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
powerline-daemon -q
if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
  . ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
else
  . $(find -path *.local* -path *bash* -name powerline.sh)
fi
export ASPNETCORE_ENVIRONMENT="Development"
source scl_source enable rh-dotnet20
