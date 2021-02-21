local custom_attach = function(client)
    require'completion'.on_attach(client)
end

require'lspconfig'.tsserver.setup{on_attach = custom_attach}
require'lspconfig'.intelephense.setup{on_attach = custom_attach}
require'lspconfig'.solargraph.setup{on_attach = custom_attach}
require'lspconfig'.pyls.setup{on_attach = custom_attach}

local saga = require 'lspsaga'
saga.init_lsp_saga()
