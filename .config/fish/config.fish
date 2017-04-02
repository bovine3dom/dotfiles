fish_vi_key_bindings
setenv EDITOR /usr/bin/vim


fzf_key_bindings

. ~/.config/fish/functions/z.fish

if status --is-login
    set PATH $PATH /usr/bin /sbin ~/bin
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

if test (string match "*thinkpad2*" (uname -a))
    eval (envoy -pf)
end
