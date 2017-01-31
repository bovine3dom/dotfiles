function man --description 'Format and display the on-line manual pages'
	# Work around the "builtin" manpage that everything symlinks to,
	# by prepending our fish datadir to man. This also ensures that man gives fish's
	# man pages priority, without having to put fish's bin directories first in $PATH

    # Notice local but exported variable
    set -x LESS_TERMCAP_md (printf "\e[36m")
    set -x LESS_TERMCAP_me (printf "\e[0m")
    set -x LESS_TERMCAP_se (printf "\e[0m")
    set -x LESS_TERMCAP_so (printf "\e[30;42m")
    set -x LESS_TERMCAP_ue (printf "\e[0m")
    set -x LESS_TERMCAP_us (printf "\e[33m")
                        
	set -lx MANPATH (string join : $MANPATH)
	if test -z "$MANPATH"
		type -q manpath; and set MANPATH (command manpath)
	end
	set -l fish_manpath (dirname $__fish_datadir)/fish/man
	if test -d "$fish_manpath" -a -n "$MANPATH"
		set MANPATH "$fish_manpath":$MANPATH

		# Invoke man with this manpath, and we're done
		command man $argv
		return
	end
	
	# If fish's man pages could not be found, just invoke man normally
	command man $argv
end
