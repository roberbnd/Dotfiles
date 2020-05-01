Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'ayu-theme/ayu-vim'
"{{{======================================================================================
" Colorscheme
"======================================================================================}}}

Plug 'ryanoasis/vim-devicons'
"{{{======================================================================================
" Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP and many more
"======================================================================================}}}

Plug 'itchyny/lightline.vim'
"{{{======================================================================================
" A light and configurable statusline/tabline plugin for Vim
let g:lightline = {
      \ 'colorscheme': 'ayu',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ],
      \     [
      \       'gitbranch',
      \       'gitstatus',
      \       'currentfunction',
      \       'readonly',
      \       'filename',
      \       'modified',
      \       'method',
      \       'cocstatus'
      \     ]
      \   ],
      \   'right': [
      \     [ 'filetype', 'lineinfo', 'blame' ],
      \     [ 'blame' ]
      \   ]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction',
      \   'cocstatus': 'coc#status',
      \   'gitbranch': 'LightlineGitBranch',
      \   'gitstatus': 'LightlineGitStatus',
      \   'blame': 'LightlineGitBlame',
      \   'currentfunction': 'CocCurrentFunction',
      \ }
\ }
"======================================================================================}}}

Plug 'gcmt/taboo.vim'
"{{{======================================================================================
" Rename tabs
"======================================================================================}}}

Plug 'osyo-manga/vim-brightest'
"{{{======================================================================================
" bright the same words
let g:brightest#highlight = { "group" : "ErrorMsg" }
"======================================================================================}}}

Plug 'ntpeters/vim-better-whitespace'
"{{{======================================================================================
" This plugin causes all trailing whitespace characters
let g:strip_only_modified_lines=1
"======================================================================================}}}

Plug 'junegunn/limelight.vim'
"{{{======================================================================================
" Hyperfocus-writing in Vim.
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
"======================================================================================}}}

Plug 'miyakogi/seiya.vim'
"{{{======================================================================================
"transparent background color in (transparent) terminal.
let g:seiya_auto_enable=1
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']
"======================================================================================}}}

