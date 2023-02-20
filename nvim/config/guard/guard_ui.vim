" Plug 'mrshmllow/document-color.nvim'
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'projekt0n/github-nvim-theme'
" Plug 'Mofiqul/vscode.nvim'

require("indent_blankline").setup {
  show_end_of_line = true,
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
}
Plug 'lukas-reineke/indent-blankline.nvim'
"{{{======================================================================================
let g:indent_blankline_enabled = v:false
"======================================================================================}}}


require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
Plug 'folke/lsp-colors.nvim', { 'branch': 'main' }
"{{{======================================================================================
" Automatically creates missing LSP diagnostics highlight groups for color schemes that
" don't yet support the Neovim 0.5 builtin lsp client.
"======================================================================================}}}

" Plug 'kevinhwang91/nvim-hlslens'
"{{{======================================================================================
" Add virtual text for the current matched instance while searching
" lua vim.api.nvim_set_keymap('n', '*', [[<Plug>(asterisk-z*)<Cmd>lua require('hlslens').start()<CR>]], {})
" lua vim.api.nvim_set_keymap('x', '*', [[<Plug>(asterisk-z*)<Cmd>lua require('hlslens').start()<CR>]], {})
"======================================================================================}}}

linty-org/key-menu.nvim
https://github.com/liuchengxu/vim-which-key
https://github.com/CosmicNvim/cosmic-ui
https://github.com/DaikyXendo/nvim-material-icon

Plug 'szw/vim-maximizer'
"{{{======================================================================================
let g:maximizer_set_default_mapping = 0
"======================================================================================}}}

Plug 'miyakogi/seiya.vim'
"{{{======================================================================================
"transparent background color in terminal.
let g:seiya_auto_enable=1
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']
"======================================================================================}}}

Plug 'gabenespoli/vim-mutton'
"{{{======================================================================================
" border
" let g:mutton_min_center_width = 24
"======================================================================================}}}
Plug 'gabenespoli/vim-mutton'
"{{{======================================================================================
" border
" let g:mutton_min_center_width = 24
"======================================================================================}}}
nnoremap <space>B :MuttonToggle('left')<cr>
