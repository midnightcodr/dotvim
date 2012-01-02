## Instruction
	cd ~
	git clone http://github.com/midnightcodr/dotvim.git ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	cd ~/.vim
	git submodule update --init

## Notes
	If you already have ~/.vim/ and ~/.vimrc, you might want to
	back them up first before running the above commands:
		mv ~/.vim{,.bak}
		mv ~/.vimrc{,.bak}
