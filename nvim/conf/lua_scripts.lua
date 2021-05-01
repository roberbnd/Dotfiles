local custom_attach = function(client)
    require'completion'.on_attach(client)
    require'folding'.on_attach()
    require"lsp_signature".on_attach({
      bind = true,
      handler_opts = {border = "single"}
    })
end

-- Lsp server
require'lspconfig'.intelephense.setup{on_attach = custom_attach}
require'lspconfig'.pyls.setup{on_attach = custom_attach}
require'lspconfig'.solargraph.setup{
    on_attach = custom_attach,
    diagnostics = true,
    useBundler = true,
}
require'lspconfig'.tsserver.setup{on_attach = custom_attach}
require'lspconfig'.vimls.setup{on_attach = custom_attach}

-- LSP Icons
require'lspkind'.init()
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
  }
}

require'hop'.setup({
    case_insensitive = true
})
require'fzf_lsp'.setup()
require'colorizer'.setup()
-- Pairs
require'pears'.setup()
require'trouble'.setup({
  height = 5
})
-- require'lspsaga'.init_lsp_saga()
--[[ require'lspsaga'.init_lsp_saga {
    code_action_icon = '💡',
    infor_sign = 'ℹ️',
    warn_sign = '⚠️',
    error_sign = '❌',
    hint_sign = '🔍',
} ]]

