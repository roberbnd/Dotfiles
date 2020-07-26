Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'StanAngeloff/php.vim'
"{{{======================================================================================
" Colorscheme
let g:php_var_selector_is_identifier = 1
"======================================================================================}}}

Plug 'ryanoasis/vim-devicons'
"{{{======================================================================================
" Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP and many more
"======================================================================================}}}

Plug 'vim-airline/vim-airline'
"{{{======================================================================================
let g:airline_powerline_fonts = 1
let g:airline_section_c = '%t'
let g:airline_section_z = '%l:%c'
let g:airline_section_y = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 2
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
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
"======================================================================================}}}

Plug 'gcmt/taboo.vim'
"{{{======================================================================================
" Rename tabs
"======================================================================================}}}

Plug 'osyo-manga/vim-brightest'
"{{{======================================================================================
" bright the same words
let g:brightest#highlight = { "group" : "EasyMotionTarget" }
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

Plug 'luochen1990/rainbow'
"{{{======================================================================================
let g:rainbow_active = 1
"======================================================================================}}}
