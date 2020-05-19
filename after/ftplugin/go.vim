inoreabbrev iferr if err!= nil {<cr>}<esc>O
nnoremap <F8> :GoMetaLinter<cr>
nnoremap <F9> :GoCoverageToggle -short<cr>
nnoremap <F10> :GoTest -short<cr>
nmap <F12> <Plug>(go-def)
nmap <leader>ga <Plug>(go-alternate-edit)
nmap <leader>gah <Plug>(go-alternate-split)
nmap <leader>gav <Plug>(go-alternate-vertical)
nmap <leader>gt :GoDeclsDir<cr>
nmap <leader>gtf :GoTestFunc<cr>
nmap <leader>gc <Plug>(go-coverage-toggle)
nmap <leader>gd :GoDefJump<cr>
nmap <leader>gdv <Plug>(go-def-vertical)
nmap <leader>gdh <Plug>(go-def-split)
nmap <leader>gD <Plug>(go-doc)
nmap <leader>gDv <Plug>(go-doc-vertical)

let g:darkside_bop = get(g:, 'darkside_bop', '^\w.*$')
let g:darkside_eop = get(g:, 'darkside_eop', '^.$')
