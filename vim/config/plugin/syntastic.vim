let g:syntastic_check_on_open   = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_stl_format      = '[%E{%e error(s)}%B{, }%W{%w warning(s)}]'
let g:syntastic_mode_map        = {
	\'mode': 'active',
	\'active_filetypes': ['php'],
	\'passive_filetypes': ['html', 'css']
	\}
