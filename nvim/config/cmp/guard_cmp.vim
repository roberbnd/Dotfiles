
" Plug 'saadparwaiz1/cmp_luasnip'
" Plug 'lukas-reineke/cmp-under-comparator'
" Plug 'L3MON4D3/LuaSnip'
" Plug 'rafamadriz/friendly-snippets'
" Plug 'smjonas/snippet-converter.nvim'
" Plug 'honza/vim-snippets'
" I like auto-trigger

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

-- snippet_dirs = {"~/.config/nvim/plugged/vim-snippets/snippets/", "~/.config/nvim/snippets"},
  -- preselect = cmp.PreselectMode.Item,
  -- preselect = cmp.PreselectMode.None,
  -- completion = {
  --   autocomplete = true
  -- },

      -- luasnip.lsp_expand(args.body)
    -- { name = 'luasnip' },
    -- { name = 'nvim_lsp_signature_help' }

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

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
