set autoread  " update the file if changed
set autoindent
" set clipboard+=unnamedplus  " make slow nvim with dd, x, yy etc I pefer "+
set completeopt=menuone,noinsert,noselect  " Set completeopt to have a better completion experience
set cmdheight=1
set cursorline
" set cursorcolumn
set diffopt=vertical
set expandtab
set encoding=utf-8
set fileencoding=utf-8
set foldcolumn=0
set foldlevel=99
" set foldmarker={{{,}}}
" set foldmethod=marker
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldtext=CustomFoldText()
set guicursor=n-i-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
set hidden
set hlsearch
set incsearch
set inccommand="nosplit"
set laststatus=2
" set listchars=tab:>-,eol:<,space:+,trail:- " show special characters"
set listchars=tab:>-,eol:<,trail:- " show special characters"
set mouse=
" set mouse=a
set nobackup
set nocompatible
set noerrorbells
set noswapfile
set nowritebackup
set noshowmode   " disable cmd message --INSERT--
set t_Co=256
set redrawtime=10000  " syntax on big files
set sessionoptions+=tabpages,globals,buffers
set shiftwidth=4
set shortmess+=c   " don't give |ins-completion-menu| messages.
set showbreak=↳
set showtabline=0
set signcolumn=yes
set signcolumn=auto:2
" set number  " after signcolumn
set tabstop=4
set termguicolors
set undofile
set updatetime=300
set undodir=~/.config/nvim/undo
set viewoptions=cursor,folds,slash,unix
set wildoptions=pum
set wildignorecase
" set wrap
set nowrap
" filetype on
filetype plugin on
syntax on
let mapleader="\<space>"
