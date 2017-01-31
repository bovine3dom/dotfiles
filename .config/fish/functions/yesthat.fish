function yesthat
	sudo pacman -S (echo $history[1] | cut -d " " -f3-)
end
