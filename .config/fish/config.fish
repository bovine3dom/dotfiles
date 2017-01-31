fish_vi_key_bindings
setenv EDITOR /usr/bin/vim
#source /usr/share/fish/functions/fzf.fish
#set -l envfile "$HOME/.gnome-keyring.env"
#
#if not pgrep -f 'gnome-keyring-daemon.*components.*gpg,ssh,secrets' > /dev/null
#	# A hack to clean up old instances
#	killall gnome-keyring-daemon
#
#	gnome-keyring-daemon --start --components=gpg,ssh,secrets > $envfile
#end
#
## change var assignments to the fish syntax:
## 1. prefix with set -x
## 2. turn = to ' '
## 3. add ; at the end of each line
#set var_set (cat "$envfile" |  sed -e 's/^\(.*\)/set -x \\1/' -e 's/=/ /' -e 's/\(.*\)$/\1;/')
#eval $var_set

envoy
fzf_key_bindings


if status --is-login
    set PATH $PATH /usr/bin /sbin ~/bin
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end
