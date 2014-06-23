filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Vundle lui-même
Plugin 'gmarik/Vundle.vim'

" Plugin fonctionnels
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'jistr/vim-nerdtree-tabs'

" Plugin de syntaxe
Plugin 'othree/html5.vim'
Plugin 'itspriddle/vim-jquery'
Plugin 'estin/htmljinja'
Plugin 'ChrisYip/Better-CSS-Syntax-for-Vim'
Plugin 'noprompt/vim-yardoc'
Plugin 'php.vim--Hodge'

Plugin 'darkelfe/vim-highlight'

" Thème
Plugin 'tomasr/molokai'

call vundle#end()
