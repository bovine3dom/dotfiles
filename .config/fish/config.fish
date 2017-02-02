fish_vi_key_bindings
setenv EDITOR /usr/bin/vim

fzf_key_bindings

# have moved envoy to within this switch, check to see if it still works?
if status --is-login
    envoy
    set PATH $PATH /usr/bin /sbin ~/bin
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
#ssh-add -l |grep -q /.ssh/thinkpad_rsa; or ssh-add ~/.ssh/thinkpad_rsa
#eval (envoy -pf)

