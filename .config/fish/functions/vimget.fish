function vimget --description 'alias vimget cd ~/.vim/bundle; git clone --depth=1 '
	cd ~/.vim/bundle; yadm submodule add --depth=1  $argv; cd -;
end
