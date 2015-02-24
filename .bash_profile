# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:$HOME/tst:$HOME/tbin:/sbin:$PATH

export PATH

cd env
git pull

screen -r -t ansi
