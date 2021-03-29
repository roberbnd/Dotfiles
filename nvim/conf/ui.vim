Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'bignimbus/pop-punk.vim'
"{{{======================================================================================
" colorschema
"======================================================================================}}}

Plug 'phanviet/vim-monokai-pro'
"{{{======================================================================================
"======================================================================================}}}

Plug 'ryanoasis/vim-devicons'
"=========================================================================================
" icons
"=========================================================================================

Plug 'onsails/lspkind-nvim'
"=========================================================================================
" icons lsp
"=========================================================================================

Plug 'osyo-manga/vim-brightest'
"{{{======================================================================================
" bright the same words
let g:brightest#highlight = { "group" : "HighlightText" }
"======================================================================================}}}

Plug 'vim-airline/vim-airline'
"{{{======================================================================================
" require vim-fugitive to show the branch name
let g:airline_powerline_fonts = 1
let g:airline_inactive_collapse=0
let g:airline_section_c = '%t'
let g:airline_section_z = '%l:%c'
" let g:airline_section_y = ''
" let g:airline_right_sep = ''
" let g:airline_left_sep = '�'
let g:airline_focuslost_inactive = 0
let g:airline_inactive_collapse=0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t:r'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_count = 0
"======================================================================================}}}

Plug 'ntpeters/vim-better-whitespace'
"{{{======================================================================================
" all trailing whitespace characters (see Supported Whitespace Characters below) to be highlighted.
"======================================================================================}}}

Plug 'edkolev/tmuxline.vim'
"{{{======================================================================================
" tmux statusline generator with support for powerline symbols and lightline
let g:tmuxline_powerline_separators = 0
let g:tmuxline_status_justify = 'left'
let g:tmuxline_preset = {
  \'a': '#S',
  \'win': '#I #W',
  \'cwin': '#I #W',
  \'x': '%a',
  \'y': '%R'
\}
"======================================================================================}}}

Plug 'miyakogi/seiya.vim'
"{{{======================================================================================
"transparent background color in terminal.
let g:seiya_auto_enable=1
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']
"======================================================================================}}}

Plug 'ap/vim-css-color'
"{{{======================================================================================
" Preview color
"======================================================================================}}}
