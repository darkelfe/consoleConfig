#!/bin/bash

#
# Met à jour un plugin via git
#
function majGit() {
	plugin=$1
	echo -e "mise à jour de \033[1m$plugin\033[0m..."
	cd ~/.vim/bundle/$plugin && git pull
}

majGit "html5.vim"
majGit "syntastic"
majGit "supertab"
majGit "vim-jquery"
majGit "nerdcommenter"
majGit "vim-pathogen"
majGit "htmljinja"
majGit "Better-CSS-Syntax-for-Vim"
majGit "nerdtree"
majGit "tagbar"
majGit "vim-airline"
majGit "vim-bufferline"
majGit "vim-fugitive"

