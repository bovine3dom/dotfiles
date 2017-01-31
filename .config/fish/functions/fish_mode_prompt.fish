function fish_mode_prompt --description 'Displays the current mode'
	# Do nothing if not in vi mode
  if set -q __fish_vi_mode
    switch $fish_bind_mode
      case default
        set_color red white
        echo '[N]'
      case insert
        set_color green white
        echo '[I]'
      case replace-one
        set_color green white
        echo '[R]'
      case visual
        set_color magenta white
        echo '[V]'
    end
    set_color normal
    echo -n ' '
  end
end
