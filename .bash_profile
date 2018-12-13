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
    # include .bash_profile_local if it exists
    if [ -f $HOME/.bash_profile_local ]; then
        . "$HOME/.bash_profile_local"
    fi
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	    . "$HOME/.bashrc"
    fi
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/bin_local" ] ; then
  PATH="$HOME/bin_local:$PATH"
fi
if [ -d "$M2_HOME/bin" ] ; then
  PATH="$M2_HOME/bin:$PATH"
fi
if [ -d "/opt/idea/bin" ] ; then
  PATH="/opt/idea/bin:$PATH"
fi
if [ -d "/opt/play" ]; then
  PATH="/opt/play:$PATH"
fi
if [ -d "$HOME/act/startkit" ]; then
  PATH="$HOME/act/startkit:$PATH"
fi
if [ -d "/snap/bin" ]; then
  PATH="$PATH:/snap/bin"
fi
if [ -d "$HOME/dockit" ] ; then
  PATH="$HOME/dockit:$PATH"
fi
if [ -d "$HOME/.cargo/bin" ] ; then
  PATH="$HOME/.cargo/bin:$PATH"
fi

`echo $- | grep -qs i` && which byobu-launcher > /dev/null && byobu-launcher

#eval $(thefuck --alias)

export PATH="/home/luog/.sdkman/candidates/gradle/current/bin:/home/luog/.nvm/versions/node/v8.9.1/bin:/usr/lib/jvm/jdk/bin:/home/luog/.local/bin:/home/luog/bin_local:/home/luog/bin:/usr/lib/jvm/jdk/bin:/opt/play:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/maven/bin:/opt/tomcat/bin:/opt/sbt/bin:/snap/bin:~/.cargo/bin:/opt/mssql-tools/bin:/home/luog/.vimpkg/bin"
