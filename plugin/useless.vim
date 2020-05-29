nnoremap <leader>w :Useless<cr>
let g:useless_foreground = '#7b88a1'
let g:useful_default_boundary_start = '^\s*$\n\zs'
let g:useful_default_boundary_end = '^\s*$'
let g:useless_opacity = 0.3
let g:useful_groups = {
			\'prose':{
			\	'filetypes':['markdown','tex'],
			\	'boundary_start':'\(\([.!?#>-]\s\)\@<=.\|\(^\t\)\@<=\w\|^[A-Z0-9]\)',
			\	'boundary_end':'\(\([.!?]\s\)\@=\|\(\n$\)\@=\)'},
			\'boundary_free' : {
			\	'filetypes':['make','yaml'],
			\	'boundary_start':'',
			\	'boundary_end':''},
			\}
let g:useful_filetypes = {'go':{'boundary_start':'^\w.*$','boundary_end':'\(^.$\|func.*{.*}$\)'}}
