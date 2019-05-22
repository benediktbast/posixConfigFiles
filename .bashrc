#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias
# Test non Posix conform ls paramters first
ls --color=auto &> /dev/null
if [ $? -eq 0 ]; then
    #set ls command for linux
    alias ls='ls -p --color=auto'
    alias ll='ls -lap --color=auto'
else
    #set ls commands posix conform for bsd/darwin
    alias ls='ls -pG'
    alias ll='ls -lpaG'
fi

export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35'

# Git
alias branch='git symbolic-ref --short HEAD'¬

#Set prompt
PS1='\u@\h \W\$ '

#Configure Golang
export GOPATH="$HOME/data/go"
export PATH="$PATH:$GOPATH/bin"

#Visual
export VISUAL="vim"
source /usr/share/nvm/init-nvm.sh
