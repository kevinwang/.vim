.PHONY: setup update
setup:
	git submodule update --init --recursive
	ln -sf ~/.vim/.vimrc ~/.vimrc
	ln -sf ~/.vim/.gvimrc ~/.gvimrc
	@echo
	@echo "    See YouCompleteMe installation instructions to run bundle/YouCompleteMe/install.py"
	@echo "    https://github.com/Valloric/YouCompleteMe#installation"
update:
	git submodule foreach git pull origin master
