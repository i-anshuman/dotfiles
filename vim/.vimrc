" ===== General Setting =====
set number
set relativenumber
set termguicolors
set cursorline

" Remove underline from cursor line
highlight CursorLine cterm=NONE gui=NONE

" Set wrap, line break, break indent and encodings
set wrap
set linebreak
set breakindent
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

syntax on
set laststatus=3
set showcmd
set ruler
set numberwidth=4

set incsearch
set hlsearch
set ignorecase
set smartcase

set undofile
set undodir=~/.vim/undo//

nnoremap <leader>ss :mksession! .vim-session<CR>
nnoremap <leader>sl :source .vim-session<CR>
nnoremap <leader>h :nohlsearch<CR>

" ===== GitGutter =====
set signcolumn=yes
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0

" ===== Fern File Explorer Keybindings =====

" Toggle fern drawer
nnoremap <leader>e :Fern . -drawer -toggle -width=30<CR>

" Reveal current file in fern
nnoremap <leader>fr :Fern . -drawer -reveal=% -width=30<CR>

" Open fern at current file's directory
nnoremap <leader>fd :Fern %:h -drawer -toggle -width=30<CR>

" Show hidden files
let g:fern#default_hidden = 1

" Render icons
let g:fern#renderer = 'nerdfont'

" Fern buffer-specific actions
augroup fern_buffer_mappings
  autocmd!
  autocmd FileType fern nnoremap <buffer> <CR> <Plug>(fern-action-open:select)
  autocmd FileType fern nnoremap <buffer> s <Plug>(fern-action-open:split)
  autocmd FileType fern nnoremap <buffer> v <Plug>(fern-action-open:vsplit)
  autocmd FileType fern nnoremap <buffer> t <Plug>(fern-action-open:tabedit)
  autocmd FileType fern nnoremap <buffer> h <Plug>(fern-action-collapse)
  autocmd FileType fern nnoremap <buffer> l <Plug>(fern-action-expand)
  autocmd FileType fern nnoremap <buffer> N <Plug>(fern-action-new-file)
  autocmd FileType fern nnoremap <buffer> K <Plug>(fern-action-new-dir)
  autocmd FileType fern nnoremap <buffer> R <Plug>(fern-action-rename)
  autocmd FileType fern nnoremap <buffer> D <Plug>(fern-action-remove)
augroup END

" ===== Coc (Java IDE) =====
set updatetime=300
set shortmess+=c

" Autocomplete
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) : "\<TAB>"
inoremap <silent><expr> <S-TAB>
      \ coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Go to code
nmap gd <Plug>(coc-definition)
nmap gr <Plug>(coc-references)
nmap gi <Plug>(coc-implementation)
nmap gy <Plug>(coc-type-definition)

" Hover documentation
nnoremap K :call CocActionAsync('doHover')<CR>

" Rename symbol
nnoremap <leader>rn <Plug>(coc-rename)

" Code actions (imports, fixes)
nnoremap <leader>ca <Plug>(coc-codeaction)

" Format file
nnoremap <leader>f :call CocAction('format')<CR>

" ===== Debugger (Java) =====
nnoremap <leader>db :call CocAction('debug')<CR>
nnoremap <leader>dc :call CocAction('debugContinue')<CR>
nnoremap <leader>dn :call CocAction('debugStepOver')<CR>
nnoremap <leader>di :call CocAction('debugStepInto')<CR>
nnoremap <leader>do :call CocAction('debugStepOut')<CR>
nnoremap <leader>dr :call CocAction('debugRestart')<CR>
nnoremap <leader>dq :call CocAction('debugStop')<CR>

" Breakpoints
nnoremap <leader>bb :call CocAction('toggleBreakpoint')<CR>

" ===== Test runner =====

let g:test#java#runner = 'maven'
let g:test#strategy = 'neovim'
let g:test#neovim#term_position = 'below'   " output appears below current buffer
let g:test#neovim#term_size = 15            " terminal height

" Run tests
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>tl :TestLast<CR>

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>fs :Rg<CR>


" Open quickfix window manually
nnoremap <leader>co :copen<CR>
nnoremap <leader>cc :cclose<CR>
nnoremap <leader>cn :cnext<CR>
nnoremap <leader>cp :cprev<CR>

" Load plugins file
source ~/.vim/plugins.vim

