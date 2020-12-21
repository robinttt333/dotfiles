" Setting leader as space
" https://www.reddit.com/r/vim/comments/2d2za5/question_about_having_spacebar_as_leader/
" Also note that using space conflicts with cocLists mappings so please change them accordingly in coc.vim

let mapleader="\<Space>"
let mapleader = ' '
" Setting local leader
let maplocalleader = ','
" My mappings
noremap <leader><space> :nohlsearch<CR>
"nnoremap <leader>m :marks<CR>
nnoremap <leader>w :bd!<CR>
"map <leader>f :StripWhitespace<CR>
nnoremap <C-a> <Esc>ggVG<CR>
" Smart way to exit insert mode and save
inoremap jk <Esc>l
inoremap <C-s> <Esc>
nnoremap <C-s> :w!<CR>
" Exit visual mode
:vnoremap <leader><leader> <esc>
nnoremap <leader>p :ProjectFiles<CR>
nnoremap <leader>f :Rg!<CR>
nnoremap <leader>b :Buffers<CR>
" switch between window splits
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
nnoremap <silent> <expr> <Leader>n g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
"nnoremap <leader><leader> :call ToggleQuickfix()<CR>
" Source init.vim
nnoremap <leader>so :source $MYVIMRC<CR>
" Vertical split and close
nnoremap <leader>v <C-w>v
" Better than <C-w>q to close a window as it does not close last window for that use ZZ
nnoremap <leader>z :close<CR>
" toggle between vertical and horizontal views
nnoremap <silent><leader>tt :call ToggleWindowHorizontalVerticalSplit()<cr>
" Fast editing vim config
nnoremap <leader>em :e $HOME/.config/nvim/plug-config/mappings.vim<cr>
nnoremap <leader>eg :e $HOME/.config/nvim/plug-config/general.vim<cr>
nnoremap <leader>ef :e $HOME/.config/nvim/plug-config/functions.vim<cr>
nnoremap <leader>ep :e $HOME/.config/nvim/plug-config/plugins.vim<cr>

" move lines up and down
nnoremap <C-k>   :<C-u>silent! move-2<CR>==
nnoremap <C-j> :<C-u>silent! move+<CR>==
" Quickfix
nnoremap <leader>qq :call ToggleQuickfix()<cr>
