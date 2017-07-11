function tmux-attach
	switch (tmux list-sessions ^ /dev/null | wc -l);
        case 0
            tmux
        case 1
            tmux attach
        case '*'
            tmux list-sessions
            read -n 1 -p "echo Select command: " N
            tmux attach -t $N
    end
end
