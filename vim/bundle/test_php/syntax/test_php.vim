" Vim syntax file
"
" Language:	PHP 5.3
" Author:	Julien Rosset <jul.rosset@gmail.com>
"
" Creation:	April 9, 2013
" Last Change:	April 9, 2013
"
" Version:	0.1

" Options: {{{1
" 	" php_short_tags=0/1 [1] : PHP short tags allowed ?
" }}}1

" Gère les cas où de la syntaxe est déjà définie
if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

if !exists("main_syntax")
  let main_syntax = 'php'
endif

" PHP insensible à la casse
syntax clear
syntax case ignore


" Lecture des options
function! s:getOption(name, default)
	if exists('b:'.a:name)
		return b:{a:name}
	elseif exists('g:'.a:name)
		return g:{a:name}
	else
		return a:defaut
	endif
endfunction

let s:php_short_tags = s:getOption('php_short_tags', 1);

delfunction s:getOption


" Declaration PHP: <?php ... ?> {{{1
if s:php_short_tags == 1
	syntax region phpPart matchgroup=phpDeclaration start=/<?\(php\)\?/ end=/?>/ keepend contains=CONTAINED
else
	syntax region phpPart matchgroup=phpDeclaration start=/<?php/ end=/?>/ keepend contains=CONTAINED
endif
" }}}1

" Commentaires: /* ... */ // {{{1
syntax region phpComment start="/\*" end="\*/" keepend contained
syntax match phpComment "//.*$" contained
" }}}1


" Coloration: {{{1
hi link phpDeclaration	Operator
hi link phpComment	Comment
" }}}1

