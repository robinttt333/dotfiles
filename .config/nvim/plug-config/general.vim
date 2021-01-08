" Setting for showing tabs, spaces and end of line characters
set list
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set modifiable
" Remove an extra line after save
set nofixeol

" Set vertical splits automatically to right
set splitright

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --follow --ignore-case --hidden -g "!{.git,node_modules,vendor}/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

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

colorscheme dracula

" clang setup
"autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()
" persist folds across sessions
augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent loadview
augroup END
