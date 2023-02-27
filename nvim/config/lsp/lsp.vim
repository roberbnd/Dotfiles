" https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
" bun add -g neovim

Plug 'neovim/nvim-lspconfig'
"{{{======================================================================================
" Collection of common configurations for Neovim's built-in language server client.
"======================================================================================}}}

Plug 'DNLHC/glance.nvim'

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}

Plug 'j-hui/fidget.nvim'
"{{{======================================================================================
" Standalone UI for nvim-lsp progress.
"======================================================================================}}}

Plug 'b0o/SchemaStore.nvim'

Plug 'ray-x/lsp_signature.nvim'
" Plug 'Issafalcon/lsp-overloads.nvim'
"{{{======================================================================================
" Extends the built-in Neovim LSP signature helper handler to add additional functionality,
" focussing on enhancements for method overloads.
"======================================================================================}}}

Plug 'stevearc/aerial.nvim'
