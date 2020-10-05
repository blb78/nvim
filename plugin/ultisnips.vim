let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]
ino  <silent>  <c-l>  <c-r>=<sid>list_snippets_for_current_ft_only()<cr>

fu! s:list_snippets_for_current_ft_only() abort
    if empty(UltiSnips#SnippetsInCurrentScope(1))
        return ''
    endif
    let word_to_complete = matchstr(strpart(getline('.'), 0, col('.') - 1), '\S\+$')
    let l:Is_relevant = {i,v ->
    \      stridx(v, word_to_complete)>=0
    \&&    matchstr(g:current_ulti_dict_info[v].location, '.*/\zs.\{-}\ze\.') ==# &ft}
    let l:Build_info = { i,v -> {
    \     'word': v,
    \     'menu': '[snip] '. g:current_ulti_dict_info[v]['description'],
    \     'dup' : 1,
    \ }}
    let candidates = map(filter(keys(g:current_ulti_dict_info), l:Is_relevant), l:Build_info)
    let from_where = col('.') - len(word_to_complete)
    if !empty(candidates)
        call complete(from_where, candidates)
    endif
    return ''
endfu
