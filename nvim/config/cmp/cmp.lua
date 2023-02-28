local snippy = require'snippy'
snippy.setup({
  snippet_dirs = {"~/.config/nvim/snippets/snippy/"},
  enable_auto = true,
  scopes = {
    javascriptreact = {'_', 'javascript', 'javascript-react', 'javascript-jquery', 'javascript-redux', 'javascript.node'},
    typescriptreact = {'_', 'javascript', 'javascript-react', 'javascript-jquery', 'javascript-redux', 'javascript.node'},
  }
})

local lspkind = require('lspkind')
lspkind.init()

require("tailwindcss-colorizer-cmp").setup({
  color_square_width = 2,
})

local cmp = require'cmp'
cmp.setup({
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 50,
      before = function (entry, vim_item)
        return vim_item
      end
    })
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),

  },
  snippet = {
    expand = function(args)
      snippy.expand_snippet(args.body)
    end
  },
  sources = {
    { name = 'snippy' },
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  },
  mapping = cmp.mapping.preset.insert({
    ['<M-h>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<m-c>"] = cmp.mapping(function(fallback)
         if vim.fn['snippy#can_jump'](-1) then
           snippy.previous()
         else
           fallback()
         end
       end, { "i", "s" }),
     ["<m-r>"] = cmp.mapping(function(fallback)
         if vim.fn['snippy#can_jump'](1) then
           snippy.next()
         else
           fallback()
         end
       end, { "i", "s" }),
  }),
})
