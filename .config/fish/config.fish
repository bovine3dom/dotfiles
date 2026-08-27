fish_vi_key_bindings
setenv EDITOR /usr/bin/vim
setenv GPG_TTY (tty)
set -gx PATH $PATH ~/bin/ ~/.gem/ruby/2.7.0/bin/ ~/.composer/vendor/bin ~/.cargo/bin ~/.local/bin
abbr -a gcm "git checkout master || git checkout main"



if status --is-login
    set PATH $PATH /usr/bin /sbin ~/bin ~/.gem/ruby/2.7.0/bin
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        # exec startx -- -keeptty
    end
end

set BROWSER /usr/bin/firefox
set GDK_SCALE 2
# set Z_EXCLUDE /home/olie /media/

keychain --quiet -Q ~/.ssh/*_rsa ~/.ssh/propbi
bass '. ~/.keychain/$HOSTNAME-sh'

fzf_key_bindings
