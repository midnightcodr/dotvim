## Instruction
	Method 1: when .vim and .vimrc don't exist
		cd ~
		git clone git://github.com/midnightcodr/dotvim ~/.vim
		ln -s ~/.vim/vimrc ~/.vimrc
		cd ~/.vim
		git submodule update --init
	Method 2: Universal and easier way
		git clone git://github.com/midnightcodr/dotvim
		cd dotvim
		bash deploy

## Notes
	If you already have ~/.vim/ and ~/.vimrc, you might want to
	back them up first before running the above commands:
		mv ~/.vim{,.bak}
		mv ~/.vimrc{,.bak}
