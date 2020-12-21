" Setting for showing tabs, spaces and end of line characters
set list
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" Remove an extra line after save
set nofixeol

" Set vertical splits automatically to right
set splitright

" fzf basic settings
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5 } }
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden .git"
let g:fzf_colors =
			\ { 'fg':      ['fg', 'Normal'],
			\ 'bg':      ['bg', 'Normal'],
			\ 'hl':      ['fg', 'Comment'],
			\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
			\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
			\ 'hl+':     ['fg', 'Statement'],
			\ 'info':    ['fg', 'PreProc'],
			\ 'border':  ['fg', 'Ignore'],
			\ 'prompt':  ['fg', 'Conditional'],
			\ 'pointer': ['fg', 'Exception'],
			\ 'marker':  ['fg', 'Keyword'],
			\ 'spinner': ['fg', 'Label'],
			\ 'header':  ['fg', 'Comment'] }

" Auto Pairs settings
let g:AutoPairsMultilineClose=0

" NERDTree specific settings
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeIgnore = ['^build$','node_modules']

" Showing the current line number and relative line numbers
set number
set relativenumber

"set cursorline
set ruler
" Allow backspace to delete
set backspace=indent,eol,start
set noshowmode
set tabstop=4
set shiftwidth=4
set encoding=utf-8

" Save file when switching between tabs
set autowrite

" Update an opened file automatically if it is changes elsewhere
set autoread

" Switch between vim and other applications
set clipboard=unnamedplus
set autoindent
set smartcase
set ignorecase
set undofile
set undodir=/tmp
set textwidth=110
set colorcolumn=110
set signcolumn=yes
set updatetime=300

colorscheme dracula

" clang setup
autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()

" case insensitive search for ripgrep
let g:rg_command = 'rg --vimgrep -S'
