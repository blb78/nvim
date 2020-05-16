function! ToggleSpellLang()
	" toggle between en and fr
	if &spelllang =~# 'en'
		:set spelllang=fr
	else
		:set spelllang=en
	endif
endfunction
