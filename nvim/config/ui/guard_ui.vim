Plug 'miyakogi/seiya.vim'
"transparent background color in terminal.
let g:seiya_auto_enable=1
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']


" Plug 'petertriho/nvim-scrollbar'
Plug 'catppuccin/nvim'
Plug 'bluz71/vim-nightfly-colors'
Plug 'folke/tokyonight.nvim'
Plug 'tiagovla/tokyodark.nvim'

" Plug 'ryanoasis/vim-devicons'
" Plug 'lukas-reineke/indent-blankline.nvim'
let g:indent_blankline_enabled = v:false

" Plug 'WhoIsSethDaniel/lualine-lsp-progress'
"Plug 'gcmt/taboo.vim'
" Rename tab name

Plug 'Djancyp/better-comments.nvim'
Plug 'Pocco81/true-zen.nvim'
" TZNarrow
" TZFocus
" TZMinimalist
" TZAtaraxis

" Plug 'nvim-zh/colorful-winsep.nvim'
" color in focused split

Plug 'SmiteshP/nvim-navic'
"shows context of the current cursor position in file.
on_attach:
  --navic.attach(client, bufnr)
  --- Guard against servers without the signatureHelper capability
  -- if client.server_capabilities.signatureHelpProvider then
  --   require('lsp-overloads').setup(client, { })
  -- end
Plug 'folke/tokyonight.nvim'
" Plug 'HiPhish/nvim-ts-rainbow2'
" Plug 'mrjones2014/nvim-ts-rainbow'
" Rainbow parentheses for neovim using tree-sitter

" Plug 'gcmt/taboo.vim'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-airline/vim-airline'
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


Plug 'shortcuts/no-neck-pain.nvim'
" Dead simple plugin to center the currently focused buffer to the middle of the screen.
":NoNeckPain Toggle the enabled state
" Plug 'loctvl842/monokai-pro.nvim'
Plug 'Mofiqul/vscode.nvim'

Plug 'azabiong/vim-highlighter'
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
