call plug#begin('~/.local/share/nvim/plugged')
	" General
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
		Plug 'junegunn/fzf.vim'
		Plug 'junegunn/goyo.vim', {'for':'markdown'}
		Plug 'blb78/limelight.vim', { 'on': 'Limelight' }
		Plug 'blb78/darkside.vim', { 'on': 'Darkside' }
		" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
		" Plug 'deoplete-plugins/deoplete-go', {'for':'go', 'do': 'make'}
	" Linting code
		Plug 'dense-analysis/ale',{'for':[
					\	'javascript',
					\	'typescript',
					\	'vue',
					\	'html',
					\	'css',
					\	'less',
					\	'scss',
					\	'json',
					\	'yaml',
					\	'markdown',
					\	'latex',
					\	'go' ]}
		Plug 'eslint/eslint' , { 'do': 'yarn install' }
	" Snippets
		Plug 'SirVer/ultisnips'
		Plug 'honza/vim-snippets'
	" Language support
		Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries' } " Go support
		Plug 'leafgarland/typescript-vim'				" TypeScript syntax highlighting
		Plug 'pangloss/vim-javascript'					" JavaScript syntax highlighting
		Plug 'plasticboy/vim-markdown'					" Markdown syntax highlighting
		Plug 'storyn26383/vim-vue'						" Vuejs syntax highlighting
	" Theme
		Plug 'blb78/nord-vim'
call plug#end()

"  Basic settings
	set autoindent					  " take indent for new line from previous line
	set autoread					  " reload file if the file changes on the disk
	set autowrite					  " write when switching buffers
	set autowriteall				  " write on :quit
	set backspace=indent,eol,start	  " proper backspace behavior
	set clipboard=unnamedplus
	set completeopt-=preview		  " remove the horrendous preview window
	set cursorline					  " highlight the current line for the cursor
	set encoding=utf-8
	set formatoptions=tcqronj		  " set vims text formatting options
	set grepprg=rg\ --vimgrep
	set hlsearch					  " disable search result highlighting
	set incsearch					  " move to match as you type the search query
	if has('nvim')
		set inccommand=split		  " enables interactive search and replace
	endif
	set lazyredraw
	set list						  " show trailing whitespace
	set listchars=tab:\|\ ,trail:▫	  " character used to show tab
	set listchars+=space:·			  " character used to show space
	set nospell						  " disable spelling
	set noswapfile					  " disable swapfile usage
	set nowrap
	set noerrorbells				  " No bells!
	set novisualbell				  " I said, no bells!
	set number relativenumber						  " show number line
	set ruler						  " show the line and the column number of the cursor position
	set laststatus=2					" Show status bar by default
	set splitbelow					  " Create horizontal splits below the current window
	set splitright					  " Create right splits
	set title						  " let vim set the terminal title
	set updatetime=100				  " redraw the status bar often
	" File Format
	set tabstop=4						" Number of spaces that a <Tab> in the file counts for
	set softtabstop=4					" Number of spaces that a <Tab> counts for while performing editing operations
	set shiftwidth=4					" Number of spaces to use for each step of (auto)indent<Paste>
	set noexpandtab						" Use tabs, not spaces
	set wildmenu						" great command-line completion
	%retab!								" Retabulate the whole file
	syntax on					  " Allow vim to set a custom font or color for a word
	filetype plugin indent on
	let mapleader = ' '
	let maplocalleader = 'ù'

" Events
	:augroup startUp
	:	autocmd VimEnter * call Startup()
	:augroup END
	:augroup cleanFile
	:	" save on leaving
	:	autocmd BufLeave * silent! :wa
	:	" remove whitespace
	:	autocmd BufWritePre * :%s/\s\+$//e
	:	autocmd! bufwritepost init.vim source %
	:augroup END
	:augroup numberColorToggle
	:	autocmd!
	:	autocmd InsertEnter * highlight LineNr ctermbg=magenta guifg=#B48EAD
	:	autocmd InsertLeave * highlight LineNr ctermbg=black guifg=#4C566A
	:augroup END
" Change test coverage color
" Must be set at the end of vimrc
hi! def		 goCoverageCovered	  ctermfg=cyan	guibg=#485962
hi! def		 goCoverageUncover	  ctermfg=red	guibg=#8A515B
