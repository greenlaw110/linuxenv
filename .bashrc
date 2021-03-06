# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
# git branch prompt
PS1='\[\033[0;32m\]\u\[\033[0;36m\] @ \h \w\[\033[0;32m\]$(__git_ps1)\n└─>\[\033[0m\]\$ '
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

export EDITOR=vim
if [ -f ~/.bashrc_local ]; then
	. ~/.bashrc_local
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export RESIN_HOME=/usr/local/share/resin
if [ -d "$RESIN_HOME/bin" ]; then
    PATH=$RESIN_HOME/bin:$PATH
fi

if [ -d "$HOME/gocode" ]; then
    export GOPATH=$HOME/gocode
fi

# prevent ctrl-s halt for screen
stty ixoff -ixon

[ -r /home/luog/.byobu/prompt ] && . /home/luog/.byobu/prompt   #byobu-prompt#

export NVM_DIR="/home/luog/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export JAVA_HOME=/usr/lib/jvm/jdk
export M2_HOME=/opt/maven

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/luog/.sdkman"
[[ -s "/home/luog/.sdkman/bin/sdkman-init.sh" ]] && source "/home/luog/.sdkman/bin/sdkman-init.sh"

export PATH="$PATH:/opt/mssql-tools/bin"

export PATH="/home/luog/.sdkman/candidates/gradle/current/bin:/home/luog/.nvm/versions/node/v8.9.1/bin:/usr/lib/jvm/jdk/bin:/home/luog/.local/bin:/home/luog/bin_local:/home/luog/bin:/usr/lib/jvm/jdk/bin:/opt/play:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/maven/bin:/opt/tomcat/bin:/opt/sbt/bin:/snap/bin:~/.cargo/bin:/opt/mssql-tools/bin:/home/luog/.vimpkg/bin:~/anaconda3/bin:/usr/local/go/bin"

export PATH="$PATH:/opt/mssql-tools/bin"
#export MAVEN_OPTS="-DsocksProxyHost=127.0.0.1 -DsocksProxyPort=16161"

source <(kubectl completion bash | sed s/kubectl/k/g)
source ~/.bash-powerline.sh

export PATH="/usr/games:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
