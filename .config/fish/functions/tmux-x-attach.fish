function tmux-x-attach
	ps -f -u $USER | grep -v grep | grep -q 'xpra start'; or  xpra start :9
    xpra attach :9 --opengl=no > /tmp/xpra-attach.log 2>&1; and env DISPLAY=:9 tmux-attach "$argv"
    xpra detach :9
end
