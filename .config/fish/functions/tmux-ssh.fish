function tmux-ssh
	ssh "$argv" -AY -t 'PS1=tmux-ssh- ; . ~/.bashrc ; tmux-x-attach'; tput init;
end
