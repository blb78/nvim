function! local#zettel#open(query)
	let l:ID = split(a:query," ")[0]
	let l:source = system('ls -f '.shellescape(l:ID).'*.md')
	execute 'silent edit '.l:source
endfunction

function! local#zettel#link(query,fullscreen)
	call fzf#vim#grep(
				\   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(a:query), 1,
				\   fzf#vim#with_preview({'sink': function('s:zettelLinkSnippet')}), a:fullscreen)
endfunc

function! local#zettel#preview(query,fullscreen)
	let l:ID = split(a:query," ")[0]
	let l:source = 'ls -f '.shellescape(l:ID).'*.md'
	call fzf#run(fzf#wrap(fzf#vim#with_preview({'source': l:source,'sink': function('s:exit'),'window': 'call CreateCenteredFloatingWindow()'})))
endfunc

function s:exit(line)
	execute "normal!\<esc>"
endfunction

function s:clean(name)
	let l:withoutExtension = substitute(a:name, ".md", "", "")
	let l:withoutUnderscore = substitute(l:withoutExtension,"_"," ","g")
	return l:withoutUnderscore
endfunction

function! s:zettelLinkSnippet(line)
	let l:filename = split(a:line,":")[0]
	let l:fileInfo = split(l:filename,"-")
	let l:ID = l:fileInfo[0]
	let l:description = s:clean(l:fileInfo[1])
	execute "normal! a\<C-r>=UltiSnips#Anon('[".l:description."](" .l:ID. ")')\<cr>"
	call s:zettelBackLinkSnippet(l:filename)
endfunction

function! s:zettelBackLinkSnippet(fileToUpdate)
	let s:backLink = expand('%:t')
	let l:fileInfo = split(s:backLink,"-")
	let l:ID = l:fileInfo[0]
	let l:description = s:clean(l:fileInfo[1])
	if match(readfile(expand(a:fileToUpdate)),"___")!=-1
		execute 'silent !sed -i -e "\$a['.l:description.']('.l:ID.')" '.a:fileToUpdate.''
	else
		execute 'silent !sed -i -e "\$a___\n\n['.l:description.']('.l:ID.')" '.a:fileToUpdate.''
	endif
endfunction

function! CreateCenteredFloatingWindow()
	let width = min([&columns - 4, max([80, &columns - 20])])
	let height = min([&lines - 4, max([20, &lines - 10])])
	let top = ((&lines - height) / 2) - 1
	let left = (&columns - width) / 2
	let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

	let top = "╭" . repeat("─", width - 2) . "╮"
	let mid = "│" . repeat(" ", width - 2) . "│"
	let bot = "╰" . repeat("─", width - 2) . "╯"
	let lines = [top] + repeat([mid], height - 2) + [bot]
	let s:buf = nvim_create_buf(v:false, v:true)
	call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
	call nvim_open_win(s:buf, v:true, opts)
	set winhl=Normal:Floating
	let opts.row += 1
	let opts.height -= 2
	let opts.col += 2
	let opts.width -= 4
	call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
	au BufWipeout <buffer> exe 'bw '.s:buf
endfunction
