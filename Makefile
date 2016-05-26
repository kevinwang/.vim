.PHONY: setup update
setup:
	git submodule update --init
	ln -sf ~/.vim/.vimrc ~/.vimrc
	ln -sf ~/.vim/.gvimrc ~/.gvimrc
update:
	git submodule foreach git pull origin master
