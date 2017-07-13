# Defined in /tmp/fish.7qamPC/tmux-x-attach.fish @ line 2
function tmux-x-attach
	ps -f -u $USER | grep -v grep | grep -q 'xpra start'; or  xpra start :9
    xpra attach :9 --opengl=no > /tmp/xpra-attach.log 2>&1 &;
    set -x DISPLAY :9
    tmux-attach "$argv"
    xpra detach :9
end
