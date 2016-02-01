#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH=/home/jonas/bin:$PATH
GDK_SCALE=2
QT_DEVICE_PIXEL_RATIO=2
EDITOR="emacsclient -nw"
if which ruby > /dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '