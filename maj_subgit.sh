#!/bin/bash

#
# Met à jour un plugin via git
#
function majGit() {
	git=$1
	echo -e "mise à jour de \033[1m$git\033[0m..."

	root=$(pwd)
	cd $git && git pull
	cd $root
}

# Zsh
majGit "zsh/zsh-syntax-highlighting"

# Bundles vim
majGit "vim/bundle/html5.vim"
majGit "vim/bundle/syntastic"
majGit "vim/bundle/supertab"
majGit "vim/bundle/vim-jquery"
majGit "vim/bundle/nerdcommenter"
majGit "vim/bundle/vim-pathogen"
majGit "vim/bundle/htmljinja"
majGit "vim/bundle/Better-CSS-Syntax-for-Vim"
majGit "vim/bundle/nerdtree"
majGit "vim/bundle/tagbar"
majGit "vim/bundle/vim-airline"
majGit "vim/bundle/vim-bufferline"
majGit "vim/bundle/vim-fugitive"

