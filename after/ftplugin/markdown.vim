let g:limelight_focus_mode_only = 0
setlocal spell spelllang=fr_FR
setlocal wrap linebreak nolist
nnoremap <F1> :setlocal spell!<CR> " toggle spell on or off
nnoremap <F2> :call ToggleSpellLang()<CR> " toggle language
nnoremap <silent> <Down> gj
nnoremap <silent> <Up> gk
nnoremap <silent> <Up> gk
nnoremap <silent> <home> g<home>
nnoremap <silent> <End> g<End>
nnoremap <leader>i viwy <esc>:call local#zettel#link("",0)<CR>
nnoremap <leader>o viwy <esc>:call local#zettel#open('<C-R>"')<CR>
nnoremap <leader>p viwy <esc>:call local#zettel#preview('<C-R>"',0)<CR>
nnoremap <leader>g :Goyo<CR>
nnoremap <leader>& m`^i# <esc>``2l
nnoremap <leader>é m`^i## <esc>``3l
nnoremap <leader>" m`^i### <esc>``4l
nnoremap <leader>' m`^i#### <esc>``5l
nnoremap <leader>( m`^i##### <esc>``6l
nnoremap <leader>è ciw``<ESC>P2l
nnoremap <leader>_ ciw__<ESC>P2l
nnoremap <leader>* ciw****<ESC>hP3l
