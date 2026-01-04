" ==== Plugin Manager ====
call plug#begin('~/.vim/plugged')

" Dracula Theme
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'tpope/vim-surround'

" Git Integration
Plug 'tpope/vim-fugitive'

" Git Diff In Single Column
Plug 'airblade/vim-gitgutter'

" File Explorer
Plug 'lambdalisue/fern.vim'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Java IDE Core
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Test Runner
Plug 'vim-test/vim-test'

call plug#end()

" ==== Colorscheme ====
colorscheme dracula
