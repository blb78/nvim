nnoremap <leader>w :Darkside<cr>
let g:darkside_blacklist = ['vue','help']
let g:darkside_groups = {'prose':{
			\ 'filetypes':['markdown','tex'],
			\ 'lightside_start':'\(\([.!?#>-]\s\)\@<=.\|\(^\t\)\@<=\w\|^[A-Z0-9]\)',
			\ 'lightside_end':'\(\([.!?]\s\)\@=\|\(\n$\)\@=\)'},
			\}
let g:darkside_filetypes = {
	\ 'go':{'lightside_start':'^\w.*$','lightside_end':'\(^.$\|func.*{.*}$\)','inactive':0},
	\ 'markdown':{'lightside_start':'\(\([.!?#>-]\s\)\@<=.\|\(^\t\)\@<=\w\|^[A-Z0-9]\)','lightside_end':'\(\([.!?]\s\)\@=\|\(\n$\)\@=\)'}}
