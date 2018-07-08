# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
#     exec startx
# fi

# tmux-x-attach() {
#  ps -f -u $USER | grep -v grep | grep -q 'xpra start' || xpra start :9
#  xpra attach :9 --opengl=no > /tmp/xpra-attach.log 2>&1 &
#  DISPLAY=:9 tmux-attach "$@"
#  xpra detach :9
# }

# tmux-attach() {
#  case $(tmux list-sessions 2>/dev/null | wc -l) in
#     0) tmux ;;
#     1) tmux attach ;;
#     *)
#        tmux list-sessions
#        read -n 1 -p "Select command: " N < /dev/tty > /dev/tty;
#        tmux attach -t $N
#        ;;
#  esac
# }

# tmux-ssh() { ssh "$@" -A -X -t 'PS1=tmux-ssh- ; . ~/.bashrc ; tmux-x-attach'; tput init; }
# above taken from https://unix.stackexchange.com/questions/251595/vim-losing-ability-to-copy-to-client-clipoard-over-ssh but have not been able to get to work perfectly

exec fish
