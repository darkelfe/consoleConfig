runtime config/parametrage-vim.vim
runtime config/theme.vim

autocmd BufEnter * set tabstop=4
autocmd BufEnter * set shiftwidth=4
autocmd BufEnter * set noexpandtab

runtime config/parametrage-plugins.vim

" Doxygen
autocmd BufEnter *.doc set filetype=doxygen
let g:doxygen_javadoc_autobrief = 0

autocmd BufEnter *.twig set filetype=htmljinja					" Twig
autocmd BufEnter *.yml											" Yml
	\ set tabstop=4|
	\ set shiftwidth=4|
	\ set expandtab

autocmd BufEnter *.vim set foldmethod=marker					" Vim

autocmd BufNewFile *.rb		so ~/.vim/headers/ruby.vim			" Ruby : entête auto
autocmd BufEnter apti,*.rb										" Apti (ruby) : tabulation = 2 espaces
	\ set tabstop=2|
	\ set shiftwidth=2|
	\ set expandtab
