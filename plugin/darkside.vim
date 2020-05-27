nnoremap <leader>w :Darkside<cr>

let g:darkside_groups = {
			\'prose':{
			\	'filetypes':['markdown','tex'],
			\	'boundary_start':'\(\([.!?#>-]\s\)\@<=.\|\(^\t\)\@<=\w\|^[A-Z0-9]\)',
			\	'boundary_end':'\(\([.!?]\s\)\@=\|\(\n$\)\@=\)'},
			\'full' : {
			\	'filetypes':['make'],
			\	'boundary_start':'',
			\	'boundary_end':''},
			\}

let g:darkside_filetypes = {'go':{'boundary_start':'^\w.*$','boundary_end':'\(^.$\|func.*{.*}$\)'}}
