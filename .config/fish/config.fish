fish_vi_key_bindings
setenv EDITOR /usr/bin/vim
setenv GPG_TTY (tty)



. ~/.config/fish/functions/z.fish

if status --is-login
    set PATH $PATH /usr/bin /sbin ~/bin ~/.gem/ruby/2.4.0/bin ~/.gem/ruby/2.5.0/bin
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        # exec startx -- -keeptty
    end
end

set BROWSER /usr/bin/firefox
set GDK_SCALE 2

keychain --quiet -Q --agents ssh ~/.ssh/*_rsa
bass '. ~/.keychain/$HOSTNAME-sh'

fzf_key_bindings
