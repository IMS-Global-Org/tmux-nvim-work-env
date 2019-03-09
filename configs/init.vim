let mapleader="\,"

" Plugins
call plug#begin('~/.vim/plugged')
  " File searching
  Plug 'scrooloose/nerdtree'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
  Plug 'jeetsukumaran/vim-buffergator'

  " Sytax
  Plug 'vim-ruby/vim-ruby'
  Plug 'mxw/vim-jsx'
  Plug 'isruslan/vim-es6'
  Plug 'pangloss/vim-javascript'
  Plug 'yggdroot/indentline'

" Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  " Plug 'mhinz/vim-signify'

  " Views
  " Plug 'cocopon/iceberg.vim'
  " Plug 'joshdick/onedark.vim'
  Plug 'tomasr/molokai'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Text completion & Syntax Checking
  Plug 'w0rp/ale' " Linting
  Plug 'ervandew/supertab' " Tab completion
  Plug 'tpope/vim-endwise' " Ruby end tag completion

  " VIM
  Plug 'guns/xterm-color-table.vim'
call plug#end()

" VimRC reloading/sourcing etc
nmap <leader>vv :e $MYVIMRC<CR>
nmap <leader>sv :source $MYVIMRC<CR>

" UI, Tabs, and Spaces
filetype plugin indent on
" colorscheme iceberg
" colorscheme onedark
colorscheme molokai
syntax on
set tabstop=2
set softtabstop=2
set expandtab
set showcmd
set cursorline
set title
set numberwidth=5
set number
nmap <leader>n :set invnumber<CR>
set cursorcolumn
set cursorline
set autoindent
set smartindent
set smarttab
set hidden
le %5

" Gutter Colors
hi LineNr ctermfg=15 ctermbg=236
hi CursorLineNr ctermfg=15 ctermbg=33

" Cursor line & column
hi CursorLine ctermbg=235
hi CursorColumn ctermbg=235

" Indentline
" let g:indentLine_setColors = 0
let g:indentLine_bgcolor_term = 233
let g:indentLine_color_term = 236
let g:indentLine_char = '|'
let g:indentLine_setConceal = 0

" nnoremap <down> :m .+1<CR>==
" nnoremap <up> :m .-2<CR>==
" vnoremap <down> :m '>+1<CR>gv=gv
" vnoremap <up> :m '<-2<CR>gv=gv
" autocmd FileType * setlocal ts=2 sts=2 sw=2

" Sign Column
" let g:gitgutter_sign_column_always = 1
set signcolumn=yes

" Undo
set undodir=~/.vim/undodir
set undofile

" Supertab
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabCrMapping = 1

" Buffergator
let g:buffergator_suppress_keymaps = 1
nmap <leader>m :BuffergatorToggle<CR>

" GitGutter
nmap <silent> <leader>g :GitGutterToggle<CR>
let g:gitgutter_enabled = 0

" Split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nnoremap <silent> <Leader>v :split<CR>
nnoremap <silent> <Leader>b :vsplit<CR>
nnoremap <silent> <Leader>q :close<CR>

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" Ale
map <leader>at :ALEToggle<CR>
" let g:ale_sign_column_always = 1
" let g:ale_fixers = {'ruby': ['ruby']}

" FZF
" let g:fzf_layout = { 'window': '10split' }
" Colors defined in .bashrc
" https://github.com/junegunn/fzf/wiki/Color-schemes
nnoremap <silent> <C-p> :FZF<CR>
" nnoremap <silent> <C-p> :GFiles<CR>
let g:fzf_layout = { 'down': '~40%' }

" Airline
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1 

" XTerm Color Table
nmap <silent> <Leader>ct :XtermColorTable<CR>

" TMUX
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
