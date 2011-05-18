# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:$HOME/tst:$HOME/tbin:/sbin:/usr/sbin

export PATH

cd env
svn up

screen -r -t ansi
