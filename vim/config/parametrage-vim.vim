set runtimepath+=/usr/share/lilypond/current/vim/

set encoding=utf-8					" Encodage par défaut

set tabstop=4						" Tabulation de 8 caractères
set shiftwidth=4					" Idem
set expandtab						" Utilise le caractère tabulation, pas des espaces
set nostartofline					" Conserve le caractère sur la même colonne quand on change de ligne
set autoindent						" Indentation automatique
set smartindent						" Idem

set showcmd							" Montre la commande en cours
set ignorecase						" Pas de casse pour les recherches
set title							" Affiche le nom et l'état du fichier dans le titre
set nonumber						" Cache les numéro de ligne
set laststatus=2					" Barre de status toujours visible
set backspace=indent,eol,start		" Autorise le caractère backspace
set ruler							" Indique la position dans le fichier
set showmatch						" Vérification présence (, {, [ lorsqu'on tappe le caractère fermant
set wildmenu						" Affiche la liste des commandes vim lors d'un appuis sur <tab> (ex: set hl <tab>)
set scrolloff=5						" Garde toujours 5 lignes visibles autour du curseur

set viewdir=~/.vim/saveview/		" Répertoire de sauvegarde des vues (replis manuels)
set foldcolumn=2					" Repère visuel pour les replis
set incsearch						" Recherche incrémentale
set nohlsearch						" Ne colorie pas les recherches

set fileformats=unix,mac,dos		" Formats de fin de ligne

set nolist								" Pas de caratères non-imprimables
set listchars=eol:¶,tab:\|\ ,trail:~	" Paramétrage des caractères non-imprimables

filetype plugin indent on			" Détection automatique du type de fichier + plugin + indentation

" Gestion de la `vue`
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

syntax enable						" Active la syntaxe
set foldmethod=syntax				" Replis basé sur la syntaxe
