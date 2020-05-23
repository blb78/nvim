let g:darkside_blacklist = ['vue']
let g:darkside_options = {
	\ 'go':{'lightside_start':'^\w.*$','lightside_end':'\(^.$\|func.*{.*}$\)'},
	\ 'markdown':{'lightside_start':'\(\([.!?#>-]\s\)\@<=.\|\(^\t\)\@<=\w\|^[A-Z0-9]\)','lightside_end':'\(\([.!?]\s\)\@=\|\(\n$\)\@=\)'}}
