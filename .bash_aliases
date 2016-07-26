alias cls=clear
alias home=cd
alias rsrc='. ~/.bashrc'
alias vi='vim'
alias vir='vim -R'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias j='jobs -l'
#alias which='type -a'
alias cd..='cd ..'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias du='du -kh'       # Makes a more readable output.
alias df='df -kTh'
alias slm='sublime'
alias s2ram='sudo /usr/sbin/s2ram'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls)
#-------------------------------------------------------------
alias ll="ls -l"
alias ls='ls -hF -G'  # add colors for filetype recognition
alias la='ls -Al'          # show hidden files
alias lx='ls -lXB'         # sort by extension
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lt='ls -ltr'         # sort by date, most recent last
alias lm='ls -al |more'    # pipe through 'more'
alias lr='ls -lR'          # recursive ls
alias l='ls -CF'

alias more='less'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some aliases for typo
alias xs='cd'
alias moer='more'
alias moew='more'
alias kk='ll'

# aliases for varierity
alias vf='variety -f'
alias vd='variety -t'
alias vn='variety -n'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Miscs
alias psjava='ps aux | grep java | grep -v grep'
alias npp='leafpad'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

# MAC specific
alias hidden='defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder'
alias nohidden='defaults write com.apple.finder AppleShowAllFiles -bool NO && killall Finder'
#alias scr-natural='defaults write ~/Library/Preferences/.GlobalPreferences com.apple.swipescrolldirection -bool TRUE && killall cfprefsd'
#alias scr-normal='defaults write ~/Library/Preferences/.GlobalPreferences com.apple.swipescrolldirection -bool FALSE && killall cfprefsd'
alias scr-natural='defaults write NSGlobalDomain com.apple.swipescrolldirection -bool TRUE && killall cfprefsd'
alias scr-normal='defaults write NSGlobalDomain com.apple.swipescrolldirection -bool FALSE && killall cfprefsd'

