# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

keychain --quiet -Q --agents gpg Blanthorn
keychain --quiet -Q --agents ssh ~/.ssh/*_rsa
. ~/.keychain/$HOSTNAME-sh
. ~/.keychain/$HOSTNAME-sh-gpg

exec fish
