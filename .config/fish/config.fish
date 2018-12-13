fish_vi_key_bindings
setenv EDITOR /usr/bin/vim
setenv GPG_TTY (tty)


fzf_key_bindings

. ~/.config/fish/functions/z.fish

if status --is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        # exec startx -- -keeptty
    end
end

set BROWSER /usr/bin/firefox

keychain --quiet -Q --agents ssh ~/.ssh/*_rsa
bass '. ~/.keychain/$HOSTNAME-sh'

set PATH $PATH /usr/bin /sbin ~/bin ~/.gem/ruby/2.5.0/bin
