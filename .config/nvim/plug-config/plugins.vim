" List of plugins to be installed
call plug#begin('~/.local/share/nvim/plugged')
  " Highlight the marker character on the leftmost column
  Plug 'kshenoy/vim-signature'
  " Cool nvim startup page
  Plug 'mhinz/vim-startify'
  " syntnax highlight in preview windows
  Plug 'sharkdp/bat'
  " see thin vertial lines for space based indentation
  Plug 'Yggdroot/indentLine'
  " Used to surround the text with brackets or quotes
  Plug 'tpope/vim-surround'
  " Used to get the icons in nerd tree
  Plug 'ryanoasis/vim-devicons'
  " Dracula theme
  Plug 'dracula/vim', { 'as': 'dracula' }
  " Adding closing quotes or parenthesis automatically
  Plug 'jiangmiao/auto-pairs'
  " Fixes the whitespace at the end of lines
  Plug 'ntpeters/vim-better-whitespace'
  " Used to comment out lines
  Plug 'preservim/nerdcommenter'
  " Used to get the file tree like in all other text editors
  Plug 'preservim/nerdtree'
  " The line shown in the bottom
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Vim + git
  Plug 'airblade/vim-gitgutter'
  " Highlight the text when yanking
  Plug 'machakann/vim-highlightedyank'
  " emmet for vim
  Plug 'mattn/emmet-vim'
  Plug 'mileszs/ack.vim'
  " Fuzzy file finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  " Autocompletion
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


