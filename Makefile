# Keep it simple for now...
all:
	git submodule init
	git submodule update
	cd vim/custom/vimproc.vim
	make
	cd ../../..
	[ -d ~/.vim/ ] || ln -s $(PWD)/vim/ ~/.vim
	[ -f ~/.vimrc ] || ln -s $(PWD)/vim/base/vimrc ~/.vimrc
	[ -f ~/.gvimrc ] || ln -s $(PWD)/vim/base/gvimrc ~/.gvimrc
	[ -f ~/.ctags ] || ln -s $(PWD)/ctags ~/.ctags

clean:
	[ -d ~/.vim/ ] || rm -f ~/.vim 
	[ -f ~/.vimrc ] || rm ~/.vimrc 
	[ -f ~/.gvimrc ] || rm ~/.gvimrc 
	[ -f ~/.ctags ] || rm ~/.ctags 

.PHONY: all
