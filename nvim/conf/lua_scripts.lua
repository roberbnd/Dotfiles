local custom_attach = function(client)
    require'completion'.on_attach(client)
end

require'lspconfig'.tsserver.setup{on_attach = custom_attach}
require'lspconfig'.intelephense.setup{on_attach = custom_attach}
require'lspconfig'.solargraph.setup{
    on_attach = custom_attach,
    diagnostics = true,
    useBundler = true,
}
require'lspconfig'.pyls.setup{on_attach = custom_attach}

local saga = require 'lspsaga'
saga.init_lsp_saga {
    code_action_icon = '💡',
    infor_sign = 'ℹ️',
    warn_sign = '⚠️',
    error_sign = '❌',
    hint_sign = '🔍',
}

require('lspkind').init({})
