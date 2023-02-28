" nerdfonts: https://github.com/ryanoasis/nerd-fonts
" font: hack
" bat: https://github.com/sharkdp/bat

Plug 'tiagovla/tokyodark.nvim'

Plug 'kyazdani42/nvim-web-devicons'
"=========================================================================================
" icons
"=========================================================================================

Plug 'akinsho/bufferline.nvim'

Plug 'osyo-manga/vim-brightest'
"{{{======================================================================================
" bright the same words
let g:brightest#highlight = { "group" : "HighlightText" }
"======================================================================================}}}

Plug 'ntpeters/vim-better-whitespace'
"{{{======================================================================================
" all trailing whitespace characters (see Supported Whitespace Characters below) to be highlighted.
" :StripWhitespace
" :StripWhitespaceOnChangedLines
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

Plug 'mrjones2014/nvim-ts-rainbow'
"{{{======================================================================================
" Rainbow parentheses for neovim using tree-sitter
"======================================================================================}}}

Plug 'rcarriga/nvim-notify'
"{{{======================================================================================
"======================================================================================}}}

Plug 'voldikss/vim-floaterm'
"{{{======================================================================================
" float terminal
let g:floaterm_width = &columns
let g:floaterm_height = &lines-2
let g:floaterm_opener = 'edit'
let g:floaterm_autoinsert=1
"======================================================================================}}}

Plug 'kevinhwang91/nvim-bqf', {'branch': 'main'}
Plug 'https://gitlab.com/yorickpeterse/nvim-pqf.git', {'branch': 'main'}
"{{{======================================================================================
" Interactive Quicklistfix
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
