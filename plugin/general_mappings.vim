inoremap { {}<Left>
inoremap (( ()
" list buffers
nnoremap gb :ls<CR>:b<Space>
" fzf list buffers
nnoremap _ :Buffers<cr>
" fzf list marks
nnoremap <localleader>m :Marks<cr>
nnoremap <localleader><localleader>a 'A
" disable arrow keys in Escape mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" disable arrow keys in Insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" moving on window
nnoremap <C-h> <C-w><left>
nnoremap <C-l> <C-w><right>
nnoremap <C-k> <C-w><up>
nnoremap <C-j> <C-w><down>
nnoremap <localleader><leader> :e $MYVIMRC<cr>
" Disable arrow movement, resize splits instead.
" nnoremap <Up>	 :resize +2<CR>
" nnoremap <Down>  :resize -2<CR>
" nnoremap <Left>  :vertical resize +2<CR>
" nnoremap <Right> :vertical resize -2<CR>
" search cword
nnoremap <silent> <C-F> :Rg <C-R><C-W><CR>
" Clear search highlights
nnoremap <leader>c :nohlsearch<cr>
" split window
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>
" close window
nnoremap <leader>q :close<cr>
" Center the screen quickly
nnoremap <space> zz
" These mappings will make it so that going to the next one in a search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
