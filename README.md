## Instruction
**Method 1**: when .vim and .vimrc don't exist

	cd ~
	git clone git://github.com/midnightcodr/dotvim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	cd ~/.vim
	git submodule update --init
	cd bundle/vim-jsbeautify && git submodule update --init --recursive

**Method 2**: Universal and easier way

	git clone https://github.com/midnightcodr/dotvim
	cd dotvim
	bash deploy

## Notes
If you already have ~/.vim/ and ~/.vimrc, you might want to back them up first before running the above commands:

	mv ~/.vim{,.bak}
	mv ~/.vimrc{,.bak}

## Usage examples
**tcomment usage**

`gcc`: comment/uncomment code with //

`ctrl _ i` or `ctrl _ b`: comment/uncomment in block style

**beautify sql statements**

`\sf`

**beautify js file**

`ctrl + f`

**Scaffold an html5 in seconds**

(in insert mode) , type `html5 [tab]`


## Updates

* 11/9/2014, added delimitMate, enabled smartindent
* 11/1/2014, added vim-jsbeautify, vim-gitgutter, SQLUtilities for vim
* 7/3/2012, added php smarty .tpl support in snipmate and created my first tpl snippet (see .vim/snippets/tpl.snippets)
* 7/4/2012, enable html snippets in .php file, thanks to http://snipplr.com/view/41134/
