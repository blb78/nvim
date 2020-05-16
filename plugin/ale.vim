let g:ale_fixers = {
			\	'javascript': ['prettier', 'eslint'],
			\	'typescript': ['prettier', 'eslint'],
			\	'vue': ['prettier', 'eslint'],
			\	'html': ['prettier', 'eslint'],
			\	'css': ['prettier'],
			\	'less': ['prettier'],
			\	'scss': ['prettier'],
			\	'json': ['prettier'],
			\	'yaml': ['prettier'],
			\	'markdown': ['prettier'],
			\	'latex': ['proselint'],
			\	'go': ['golangci-lint'],
			\}
let g:ale_go_golangci_lint_executable = '/home/blb/go/bin/golangci-lint'
let g:ale_go_golangci_lint_options = '--fast  --out-format=tab'
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:ale_javascript_prettier_use_local_config = 1
let g:airline#extensions#ale#enabled = 1
