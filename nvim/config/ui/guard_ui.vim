Plug 'shortcuts/no-neck-pain.nvim'
"{{{======================================================================================
":NoNeckPain Toggle the enabled state
"======================================================================================}}}

" Plug 'petertriho/nvim-scrollbar'
Plug 'catppuccin/nvim'
Plug 'bluz71/vim-nightfly-colors'
Plug 'folke/tokyonight.nvim'
Plug 'tiagovla/tokyodark.nvim'

" Plug 'ryanoasis/vim-devicons'
" Plug 'lukas-reineke/indent-blankline.nvim'
"{{{======================================================================================
let g:indent_blankline_enabled = v:false
"======================================================================================}}}

" Plug 'WhoIsSethDaniel/lualine-lsp-progress'
"Plug 'gcmt/taboo.vim'
"{{{======================================================================================
" Rename tab name
"======================================================================================}}}

Plug 'Djancyp/better-comments.nvim'
Plug 'Pocco81/true-zen.nvim'
"{{{======================================================================================
" TZNarrow
" TZFocus
" TZMinimalist
" TZAtaraxis
"======================================================================================}}}

" Plug 'nvim-zh/colorful-winsep.nvim'
"{{{======================================================================================
" color in focused split
"======================================================================================}}}

Plug 'SmiteshP/nvim-navic'
"{{{======================================================================================
"shows context of the current cursor position in file.
on_attach:
  --navic.attach(client, bufnr)
  --- Guard against servers without the signatureHelper capability
  -- if client.server_capabilities.signatureHelpProvider then
  --   require('lsp-overloads').setup(client, { })
  -- end
"======================================================================================}}}
Plug 'folke/tokyonight.nvim'
