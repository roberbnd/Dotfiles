set autoread
set completeopt=menuone,noinsert,noselect
set cmdheight=1
set cursorline
set diffopt=vertical
" neovim 0.9
set diffopt=vertical,linematch:60
set diffopt=horizontal

set expandtab
set encoding=utf-8
set fileencoding=utf-8

set foldcolumn=0
set foldlevel=99
set foldmethod=expr    "treesitter folding
set foldexpr=nvim_treesitter#foldexpr()
set foldtext=CustomFoldText()

set hidden
set hlsearch
set incsearch
set inccommand=nosplit
set laststatus=3
set listchars=tab:>-,eol:↴,space:+,trail:-
set mouse=

set nobackup
set nocompatible
set noerrorbells
set noswapfile

set nowritebackup
set noshowmode   " disable cmd message --INSERT--
" set number
set t_Co=256
set redrawtime=10000  " syntax on big files
set sessionoptions+=tabpages,globals,buffers
set shortmess+=c   " don't give |ins-completion-menu| messages.
set showbreak=↳
set showtabline=2
set signcolumn=yes
set splitkeep=topline
set termguicolors
set undofile
set updatetime=300
set undodir=~/.config/nvim/undo
set viewoptions=cursor,folds,slash,unix
set wildignorecase
set wrap
let mapleader="\<space>"
" time in mappings
" set timeoutlen=220
