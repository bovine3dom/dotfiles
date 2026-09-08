fish_vi_key_bindings
set -gx EDITOR nvim
set -gx GPG_TTY (tty)
set -gx BROWSER firefox
set -e GDK_SCALE

fish_add_path $HOME/bin $HOME/.local/bin $HOME/.cargo/bin $HOME/.composer/vendor/bin

abbr -a gcm 'git checkout master; or git checkout main'
abbr -a g git
abbr -a gs 'git status'
abbr -a ga 'git add'
abbr -a gp 'git pull'
abbr -a gc 'git checkout'
abbr -a grc 'git rebase --continue'
abbr -a nrb 'npm run build'
abbr -a nrr 'npm run run'
abbr -a t task
abbr -a ta 'tmux attach; or tmux'
abbr -a ts 'task sync'

if status is-interactive; and type -q keychain
    set -l keys $HOME/.ssh/*_rsa
    test -f $HOME/.ssh/propbi; and set -a keys $HOME/.ssh/propbi

    if test (count $keys) -gt 0
        SHELL=(which fish) keychain --eval --quiet -Q $keys | source
    end
end
