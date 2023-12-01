Plug 'nvim-lua/plenary.nvim'
Plug 'stevearc/dressing.nvim'
"{{{======================================================================================
"======================================================================================}}}

Plug 'anuvyklack/hydra.nvim'
"{{{======================================================================================
" Submodes
"======================================================================================}}}

" nerdfonts: https://github.com/ryanoasis/nerd-fonts
" font: hack
" bat: https://github.com/sharkdp/bat

" Plug 'loctvl842/monokai-pro.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'Mofiqul/vscode.nvim'

Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
"=========================================================================================
" icons
"=========================================================================================

Plug 'akinsho/bufferline.nvim'

" Plug 'gcmt/taboo.vim'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-airline/vim-airline'
" "{{{======================================================================================
" " Allows rename tab with the taboo plugin
" " require vim-fugitive to show the branch name
" " file autocommands, section_c on autocmd.vim
" let g:airline_powerline_fonts = 1
" let g:airline_inactive_collapse=0
" " let g:airline_section_c = '%:p:h:t' . '|' . '%t'
" " let g:airline_section_c = substitute(getcwd(),$HOME,'~','') . '|' . '%t'
" " let g:airline_section_c = '%{s:cwdd()}'
" " let g:airline_section_c = airline#section#create(["%{substitute(getcwd(),$HOME,'~','')}"])
" let g:airline_section_z = '%l:%c'
" let g:airline_section_y = ''
" let g:airline_focuslost_inactive = 0
" let g:airline_inactive_collapse=0
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#tab_min_count = 1
" let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#fnamemod = ':t:r'
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''
" let g:airline#extensions#tabline#show_tab_nr = 0
" let g:airline#extensions#tabline#show_tab_type = 0
" let g:airline#extensions#tabline#show_close_button = 0
" let g:airline#extensions#tabline#show_splits = 0
" let g:airline#extensions#tabline#show_tab_count = 0
" " ======================================================================================}}}

Plug 'luukvbaal/statuscol.nvim'

Plug 'osyo-manga/vim-brightest'
"{{{======================================================================================
" bright the same words
let g:brightest#highlight = { "group" : "HighlightText" }
"======================================================================================}}}

Plug 'nvim-lualine/lualine.nvim'
"{{{======================================================================================
"======================================================================================}}}

Plug 'azabiong/vim-highlighter'
"{{{======================================================================================
" let HiSet   = 'f<CR>'
" let HiErase = 'f<BS>'
" let HiClear = 'f<C-L>'
" let HiFind  = 'f<Tab>'
"  :Hi >
"  :Hi <
"  When you want to synchronize highlighting of the current window with other split windows, you can use:
 " :Hi ==
" and to switch back to single window highlighting mode:
 " :Hi =
" 'Sync Mode' applies to all windows in the current tab-page, and can be set differently for each tab-page.
"======================================================================================}}}

Plug 'simeji/winresizer'
"{{{======================================================================================
" let g:winresizer_start_key = '<c-a>'
"======================================================================================}}}

Plug 'folke/todo-comments.nvim'
" {{{======================================================================================
"  requires plenary
" TODO: do something
" FIX: this should be fixed
" HACK: weird code warning

" ======================================================================================}}}

Plug 'machakann/vim-highlightedyank'
"{{{======================================================================================
let g:highlightedyank_highlight_duration = 100
"======================================================================================}}}

Plug 'folke/twilight.nvim'
"{{{======================================================================================
" Twilight is a Lua plugin for Neovim 0.5 that dims inactive portions of the code you're editing.
" The plugin was heavily inspired by Limelight, but uses TreeSitter for better dimming.
"======================================================================================}}}

Plug 'rcarriga/nvim-notify'
"{{{======================================================================================
"======================================================================================}}}

Plug 'voldikss/vim-floaterm'
"{{{======================================================================================
" float terminal
" let g:floaterm_width = &columns
" let g:floaterm_height = &lines-2
let g:floaterm_opener = 'edit'
let g:floaterm_autoinsert=1
"======================================================================================}}}

Plug 'declancm/maximize.nvim'

Plug 'folke/which-key.nvim'

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

" Plug 'miyakogi/seiya.vim'
"{{{======================================================================================
"transparent background color in terminal.
let g:seiya_auto_enable=1
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']
"======================================================================================}}}

Plug 'shortcuts/no-neck-pain.nvim'
"{{{======================================================================================
" Dead simple plugin to center the currently focused buffer to the middle of the screen.
":NoNeckPain Toggle the enabled state
"======================================================================================}}}
