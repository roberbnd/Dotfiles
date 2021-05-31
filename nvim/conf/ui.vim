Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'bignimbus/pop-punk.vim'
" Plug 'phanviet/vim-monokai-pro'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
"{{{======================================================================================
" colorschema
lua vim.g.tokyonight_dark_sidebar = false
lua vim.g.tokyonight_dark_float = false
lua vim.g.tokyonight_transparent = true
"======================================================================================}}}

Plug 'phanviet/vim-monokai-pro'
"{{{======================================================================================
"======================================================================================}}}

Plug 'p00f/nvim-ts-rainbow'
"{{{======================================================================================
" Rainbow parentheses for neovim using tree-sitter. Needs nvim-treesitter.
"======================================================================================}}}

Plug 'folke/lsp-colors.nvim', { 'branch': 'main' }
"{{{======================================================================================
" Automatically creates missing LSP diagnostics highlight groups for color schemes that
" don't yet support the Neovim 0.5 builtin lsp client.
"======================================================================================}}}

Plug 'kyazdani42/nvim-web-devicons'
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

Plug 'hoob3rt/lualine.nvim'
"{{{======================================================================================
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

Plug 'norcalli/nvim-colorizer.lua'
"{{{======================================================================================
" Preview color
"======================================================================================}}}

Plug 'jmckiern/vim-venter', { 'on': 'VenterToggle' }
"{{{======================================================================================
let g:venter_width=&columns/6
"======================================================================================}}}
