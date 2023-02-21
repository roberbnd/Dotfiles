vim.cmd('source ~/.config/nvim/config/theme/dark_theme.vim')

require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  },

  tree_setter = {
    enable = true
  },

  context_commentstring = {
    enable = true,
    config = {
      javascript = {
        __default = '// %s',
        jsx_element = '{/* %s */}',
        jsx_fragment = '{/* %s */}',
        jsx_attribute = '// %s',
        comment = '// %s'
      }
    }
  },

  ensure_installed = "all",
  highlight = { enable = true, },
  indent = { enable = true },
  rainbow = { enable = true, extended_mode = true, },
  textsubjects = {
    enable = true,
    keymaps = {
      ['.'] = 'textsubjects-smart',
      [';'] = 'textsubjects-container-outer',
    }
  }
}

vim.diagnostic.config({ underline = false })
local null_ls = require("null-ls")
local builtins = null_ls.builtins
local formatting = builtins.formatting
local diagnostics = builtins.diagnostics
local code_actions = builtins.code_actions

null_ls.setup({
  sources = {
    diagnostics.eslint.with({
      method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
    }),
    code_actions.eslint_d,
    -- formatting.eslint,
    formatting.prettier,
    -- formatting.prettier.with({
    --   extra_args = {"--write"}
    -- }),
    diagnostics.rubocop,
    -- diagnostics.rubocop.with({ extra_args = {"-c", ".rubocop.yml"}}),
    -- diagnostics.rubocop.with( {
    --    command = 'bundle',
    --     args = vim.list_extend({ 'exec', 'rubocop' }, builtins.diagnostics.rubocop._opts.args),
    -- }),
    -- diagnostics.rubocop.with({
    --   command = { "bundle" },
    --   -- args = { "exec", "rubocop" },
    --   extra_args = { '-c', '.rubocop.yml' },
    -- }),
    -- diagnostics.phpcs
  }
})
