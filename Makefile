.PHONY: setup
setup:
	git submodule update --init
	ln -sf ~/.vim/.vimrc ~/.vimrc
	ln -sf ~/.vim/.gvimrc ~/.gvimrc
