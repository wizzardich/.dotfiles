# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias restart='systemctl restart'
alias start='systemctl start'
alias stop='systemctl stop'
leclipse(){
  cd /media/Stuff/University/L.Eclipse.Indigo/Eclipse.Indigo
  ./eclipse
} 
seclipse(){
  cd /media/Stuff/University/Scala/eclipse/
  ./eclipse
} 


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias & Func definitions.
smbstorage(){
	echo Connecting to $1\'s share $2
	mount.cifs //"$1"/"$2" /mnt/ -o rw,user=wizzardich
}
alias dft='df -Tah'
alias sudo='sudo '


