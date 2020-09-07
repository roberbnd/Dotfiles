filetype plugin indent on
set autoread
set clipboard+=unnamedplus
set completeopt=longest,menuone
set cursorline
" set cursorcolumn
set diffopt=vertical
set expandtab
set encoding=utf-8
set fileencoding=utf-8
set foldcolumn=0
set foldlevel=99
set foldmarker={{{,}}}
set foldmethod=marker
set foldtext=CustomFoldText()
set guicursor=n-i-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
set hidden
set hlsearch
set incsearch
set inccommand="nosplit"
set laststatus=2
" set lcs=tab:>-,eol:<,space:+,trail:-
set mouse=a
set noautoindent
set nobackup
set nocompatible
set noerrorbells
set nonumber
set noswapfile
set nowritebackup
set nowrap
set noshowmode   " disable cmd message --INSERT--
set t_Co=256
set sessionoptions+=tabpages,globals,buffers
set shiftwidth=4
set shortmess+=c   " don't give |ins-completion-menu| messages.
set showbreak=↳
set signcolumn=yes
set tabstop=4
set termguicolors
set undofile
set updatetime=300
set undodir=~/.config/nvim/undo
set viewoptions=cursor,folds,slash,unix
set wildoptions=pum
set wildignorecase
set wrap
" filetype on
filetype plugin on
syntax on
let mapleader="\<space>"
