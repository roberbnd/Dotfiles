-- https://www.youtube.com/watch?v=ub0REXjhpmk
-- local luasnip = require('luasnip')
-- local types = require("luasnip.util.types")
-- luasnip.config.setup ({
-- 	history = true, --keep around last snippet local to jump back
-- 	updateevents = "TextChanged,TextChangedI", --update changes as you type
--   enable_autosnippets = true,
--   ext_opts = {
--     [types.choiceNode] = {
--       active = {
--         virt_text = { { "●", "Error" } }
--       }
--     }
--   }
-- })
-- luasnip.filetype_extend("javascriptreact", {"typescriptreact", "javascript"})
-- luasnip.filetype_extend("typescriptreact", {"javascriptreact", "javascript"})
-- luasnip.filetype_extend("all", {"_"})
-- require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/snippets/"})
-- require("luasnip.loaders.from_vscode").lazy_load()
-- require("luasnip.loaders.from_snipmate").load({ path = { "/home/bnd/.config/nvim/snippets/snippets/" } })
-- require("luasnip.loaders.from_snipmate").lazy_load()
-- vim.cmd('smapclear')


local snippy = require'snippy'
snippy.setup({
  -- snippet_dirs = {"~/.config/nvim/plugged/vim-snippets/snippets/", "~/.config/nvim/snippets"},
  snippet_dirs = {"~/.config/nvim/snippets/snippy/"},
  enable_auto = true,
  scopes = {
    javascriptreact = {'_', 'javascript', 'javascript-react', 'javascript-jquery', 'javascript-redux', 'javascript.node'},
    typescriptreact = {'_', 'javascript', 'javascript-react', 'javascript-jquery', 'javascript-redux', 'javascript.node'},
  }
})

local lspkind = require('lspkind')
lspkind.init()

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local cmp = require'cmp'
cmp.setup({
  -- preselect = cmp.PreselectMode.Item,
  -- preselect = cmp.PreselectMode.None,
  -- completion = {
  --   autocomplete = true
  -- },
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
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
      -- luasnip.lsp_expand(args.body)
      snippy.expand_snippet(args.body)
    end
  },
  sources = {
    -- { name = 'luasnip' },
    { name = 'snippy' },
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
    -- { name = 'nvim_lsp_signature_help' }
  },
  mapping = cmp.mapping.preset.insert({
    ['<M-b>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    -- only snippy
    ["<left>"] = cmp.mapping(function(fallback)
         if vim.fn['snippy#can_jump'](-1) then
           snippy.previous()
         else
           fallback()
         end
       end, { "i", "s" }),
     ["<right>"] = cmp.mapping(function(fallback)
         if vim.fn['snippy#can_jump'](1) then
           snippy.next()
         else
           fallback()
         end
       end, { "i", "s" }),
    -- snippy, luasnip and select item
    -- ["<S-Tab>"] = cmp.mapping(function(fallback)
    --      if cmp.visible() then
    --        cmp.select_prev_item()
    --      elseif vim.fn['snippy#can_jump'](-1) then
    --        snippy.previous()
    --      elseif luasnip.jumpable(-1) then
    --        luasnip.jump(-1)
    --      else
    --        fallback()
    --      end
    --    end, { "i", "s" }),
    --  ["<Tab>"] = cmp.mapping(function(fallback)
    --      if cmp.visible() then
    --        cmp.select_next_item()
    --      elseif vim.fn['snippy#can_jump'](1) then
    --        snippy.next()
    --      elseif luasnip.expand_or_jumpable() then
    --        luasnip.expand_or_jump()
    --      elseif has_words_before() then
    --        cmp.complete()
    --      else
    --        fallback()
    --      end
    --    end, { "i", "s" }),
    -- snippy and select item
    -- ["<S-Tab>"] = cmp.mapping(function(fallback)
    --      if vim.fn['snippy#can_jump'](-1) then
    --        snippy.previous()
    --      elseif cmp.visible() then
    --        cmp.select_prev_item()
    --      else
    --        fallback()
    --      end
    --    end, { "i", "s" }),
    --  ["<Tab>"] = cmp.mapping(function(fallback)
    --      if vim.fn['snippy#can_jump'](1) then
    --        snippy.next()
    --      elseif cmp.visible() then
    --        cmp.select_next_item()
    --      elseif has_words_before() then
    --        cmp.complete()
    --      else
    --        fallback()
    --      end
    --    end, { "i", "s" }),
    --    only luasnip
    -- ['<Tab>'] = cmp.mapping(function(fallback)
    --   if luasnip.expand_or_jumpable() then
    --     luasnip.jump(1)
    --   elseif has_words_before() then
    --     cmp.complete()
    --   else
    --     fallback()
    --   end
    -- end, {"i", "s"}),
    -- ['<S-Tab>'] = cmp.mapping(function(fallback)
    --   if luasnip.jumpable(-1) then
    --     luasnip.jump(-1)
    --   elseif has_words_before() then
    --     cmp.complete()
    --   else
    --     fallback()
    --   end
    -- end, {"i", "s"}),
  }),
})
