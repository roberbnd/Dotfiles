set autoread  " update the file if changed
" set autoindent
" set clipboard+=unnamedplus  " make slow nvim with dd, x, yy etc I pefer "+ or use mouse
set completeopt=menuone,noinsert,noselect  " Set completeopt to have a better completion experience
set cmdheight=1
set cursorline
" set cursorcolumn
set diffopt=vertical
" neovim 0.9
" set diffopt=vertical,linematch:60
" set diffopt=horizontal
" convert tab to spaces
set expandtab
set encoding=utf-8
set fileencoding=utf-8
set foldcolumn=0
set foldlevel=99
set foldmethod=expr    "treesitter folding
set foldexpr=nvim_treesitter#foldexpr()
set foldtext=CustomFoldText()
set guicursor=n-i-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
set hidden
set hlsearch
set incsearch
set inccommand=nosplit
set laststatus=3
set listchars=tab:>-,eol:↴,space:+,trail:- " show special characters"
" set listchars=tab:>-,eol:<,trail:- " show special characters"
" disable mouse
" set mouse=a
set mouse=
set nobackup
set nocompatible
set noerrorbells
set noswapfile
set nowritebackup
set noshowmode   " disable cmd message --INSERT--
set t_Co=256
" set timeoutlen=500  " whichkey
set redrawtime=10000  " syntax on big files
set sessionoptions+=tabpages,globals,buffers
" set smartindent
" set shiftwidth=4
set shortmess+=c   " don't give |ins-completion-menu| messages.
set showbreak=↳
set showtabline=2
set signcolumn=yes
" set spell    " grammar
" set splitkeep=topline
" set signcolumn=auto:3
" set signcolumn=yes:2
set signcolumn=yes
" set number  " after signcolumn
" set tabstop=4
set termguicolors
set undofile
set updatetime=300
set undodir=~/.config/nvim/undo
set viewoptions=cursor,folds,slash,unix
" set wildoptions=pum
set wildignorecase
set wrap
let mapleader="\<space>"

" lua vim.o.ch = 0
" lua vim.o.ls = 0
