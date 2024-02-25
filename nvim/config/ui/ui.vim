" nerdfonts: https://github.com/ryanoasis/nerd-fonts
" font: hack or monaco
" bat: https://github.com/sharkdp/bat
Plug 'nvim-lua/plenary.nvim'
Plug 'stevearc/dressing.nvim'

Plug 'junegunn/limelight.vim'
Plug 'anuvyklack/hydra.nvim' " Submodes

Plug 'folke/tokyonight.nvim'

Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'akinsho/bufferline.nvim'
Plug 'nvim-lualine/lualine.nvim'

Plug 'https://gitlab.com/HiPhish/rainbow-delimiters.nvim' " color in brackets

" Status column plugin that provides a configurable 'statuscolumn' and click handlers.
Plug 'luukvbaal/statuscol.nvim'

Plug 'osyo-manga/vim-brightest' " bright the same words
let g:brightest#highlight = { "group" : "HighlightText" }

Plug 'folke/todo-comments.nvim'
"  requires plenary
" TODO: do something
" FIX: this should be fixed
" HACK: weird code warning


Plug 'machakann/vim-highlightedyank'
let g:highlightedyank_highlight_duration = 100

" dims inactive portions of the code you're editing.
Plug 'folke/twilight.nvim'

Plug 'rcarriga/nvim-notify'

Plug 'voldikss/vim-floaterm' " float terminal
let g:floaterm_width = &columns
" let g:floaterm_height = &lines-2
let g:floaterm_opener = 'edit'
let g:floaterm_autoinsert=1

Plug 'declancm/maximize.nvim'
Plug 'simeji/winresizer'
" let g:winresizer_start_key = '<c-a>'


Plug 'folke/which-key.nvim'

" tmux statusline generator with support for powerline symbols and lightline
Plug 'edkolev/tmuxline.vim'
let g:tmuxline_powerline_separators = 0
let g:tmuxline_status_justify = 'left'
let g:tmuxline_preset = {
  \'a': '#S',
  \'win': '#I #W',
  \'cwin': '#I #W',
  \'x': '%a',
  \'y': '%R'
\}

Plug 'miyakogi/seiya.vim'
"transparent background color in terminal.
let g:seiya_auto_enable=1
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']
