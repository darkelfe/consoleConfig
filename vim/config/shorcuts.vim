"runtime config/keyboard-remap.vim

"Couper, copier et coller avec le presse-papier du système
if has('x11') && has('clipboard')
	:nmap <C-F10> "+dd
	:nmap <S-F10> "+yy
	:nmap <F10> "+p

	:vmap <C-F10> "+d
	:vmap <S-F10> "+y
	:vmap <F10> "+p

	:imap <C-F10> <Esc>"+ddi
	:imap <S-F10> <Esc>"+yyi
	:imap <F10> <Esc>"+pi
endif

" Coloration syntaxique (debugage)
:nmap <C-y> :echo "id : '".synID(line("."), col("."), 0)."' - group : '".synIDattr(synID(line("."), col("."), 0), "name")."' - color : '".synIDattr(synIDtrans(synID(line("."), col("."), 0)), "name")."'"<CR>
:nmap <S-y> :echo "id : '".synID(line("."), col("."), 1)."' - group : '".synIDattr(synID(line("."), col("."), 1), "name")."' - color : '".synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name")."'"<CR>

" Opérations standards
	" Sauvegarder
:nmap <silent> <C-s>	:w<CR>
:imap <silent> <C-S>	<Esc>:w<CR>i
:vmap <silent> <C-s>	<Esc>:w<CR>gv

:nmap <silent> <C-q>	:q<CR>
:nmap <silent> <C-S-q>  :qa<CR>

:nmap <silent> <S-a>  ggVG

" Déplacement ligne vers le haut / bas
:nnoremap <silent> <C-Down> ddp
:nnoremap <silent> <C-Up> ddkP

:inoremap <silent> <C-Down> <Esc>ddpi
:inoremap <silent> <C-Up> <Esc>ddkPi

:vnoremap <silent> <C-Down> dp
:vnoremap <silent> <C-Up> dkP

" (dé)Pliage de code
:nmap <silent> <C-Left> zc
:nmap <silent> <C-Right> zo
:nmap <silent> <C-S-Left> :%foldc!<CR>i

:imap <silent> <C-Left> <Esc>zcki
:imap <silent> <C-Right> <Esc>zoi
:imap <silent> <C-S-Left> <Esc>:%foldc!<CR>i

:vmap <silent> <C-Left> zcgv
:vmap <silent> <C-Right> zogv
:vmap <silent> <C-S-Left> :foldc!<CR>gv

" (dé)Commenter
:nmap <silent> <F12> <Leader>c<space>
:imap <silent> <F12> <Esc><Leader>c<space>i
:vmap <silent> <F12> <Leader>c<space>gv

:nmap <silent> <S-F12> <Leader>cs
:imap <silent> <S-F12> <Leader>cs
:vmap <silent> <S-F12> <Leader>csgv

" Gestion d'onglet
:nmap <silent> <M-Left> gT
:nmap <silent> <M-Right> gt
:nmap <silent>  :call A_askFile("File to open : ")<CR>:exec ":tabnew ". Filename<CR>

:imap <silent> <A-Left> <Esc>gTi
:imap <silent> <A-Right> <Esc>gti

:vmap <silent> <A-Left> gT
:vmap <silent> <A-Right> gt

" (dé)Indentation
:nmap <silent> <Tab> >>
:nmap <silent> <S-Tab> <<

:imap <silent> <S-Tab> <Esc><<i

:vmap <silent> <Tab> >gv
:vmap <silent> <S-Tab> <gv

" Autocomplétion
:imap <silent> <F2> 
:imap <silent> <C-n> 
:imap <silent> <F3> 
:imap <silent> <F4> 

" Opérations standard
:nmap <C-S-a> ggVG

" NERD Tree : Arbre de navigation
:nmap <silent> <F9> :NERDTreeToggle<CR>

" Liste de tags
:nmap <silent> <F8> :TagbarToggle<CR>

" Syntastic
:nmap <silent> <F6> :SyntasticCheck<CR>:Errors<CR>
:nmap <silent> <S-F6> :SyntasticReset<CR>:SyntasticCheck<CR>
:nmap <silent> <C-F6> :SyntasticCheck<CR>

" Autres
:nmap <silent> <F5> :e<CR>
:nmap <silent> <C-F5> :w<CR>:e<CR>

:imap <silent> <C-u> <Esc><Right>v<S-Right><Left>Ui
