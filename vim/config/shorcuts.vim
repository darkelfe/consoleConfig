" Couper, copier et coller avec le presse-papier du système
if has('x11') && has('clipboard')
	:nmap <silent> <C-F10> "+dd
	:nmap <silent> <S-F10> "+yy
	:nmap <silent> <F10> "+p

	:vmap <silent> <C-F10> "+d
	:vmap <silent> <S-F10> "+ygv
	:vmap <silent> <F10> "+p

	:imap <silent> <C-F10> <Esc>"+ddi
	:imap <silent> <S-F10> <Esc>"+yyi
	:imap <silent> <F10> <Esc>"+pi
endif

:nmap <C-y> :echo "id : '".synID(line("."), col("."), 0)."' - group : '".synIDattr(synID(line("."), col("."), 0), "name")."' - color : '".synIDattr(synIDtrans(synID(line("."), col("."), 0)), "name")."'"<CR>
:nmap <S-y> :echo "id : '".synID(line("."), col("."), 1)."' - group : '".synIDattr(synID(line("."), col("."), 1), "name")."' - color : '".synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name")."'"<CR>

" Opérations standards
:nmap <silent> <C-s>	:w<CR>			" Sauvegarder
:nmap <silent> <C-q>	:q<CR>			" Ferme le fichier actuel
:nmap <silent> <C-S-q>  :qa<CR>			" Quitter (fermer tous)

:nmap <silent> <C-S-a>  ggVG			" Selectionner tout

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
:nmap <silent> <C-S-Left> :%foldc!<CR>

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

:imap <silent> <M-Left> <Esc>gTi
:imap <silent> <M-Right> <Esc>gti

:vmap <silent> <M-Left> gT
:vmap <silent> <M-Right> gt

" (dé)Indentation
:nmap <silent> <Tab> >>
:nmap <silent> <S-Tab> <<

:imap <silent> <S-Tab> <Esc><<i

:vmap <silent> <Tab> >gv
:vmap <silent> <S-Tab> <gv

" Autocomplétion
:imap <silent> <F2> 
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
:nmap <silent> <C-F5> :w<CR>:e<CR>
