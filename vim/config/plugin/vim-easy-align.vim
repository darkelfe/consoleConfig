xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

vmap g, :EasyAlign *, {'rm': 1, 'lm': 0, 'stl': 0}<CR>

let g:easy_align_delimiters = {
\ 	'(': { 'pattern': '(', 'lm': 0, 'rm': 0, 'stl': 0},
\ 	')': { 'pattern': ')', 'lm': 0, 'rm': 0, 'stl': 0}
\ }
