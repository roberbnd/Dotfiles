
" Plug 'nvim-treesitter/nvim-treesitter-textobjects'

" Plug 'joechrisellis/lsp-format-modifications.nvim'
" Plug 'jay-babu/mason-null-ls.nvim'


Plug 'jose-elias-alvarez/null-ls.nvim'
"{{{======================================================================================
"Format and linitng
"======================================================================================}}}
local null_ls = require("null-ls")
local builtins = null_ls.builtins
local formatting = builtins.formatting
local diagnostics = builtins.diagnostics
local code_actions = builtins.code_actions
null_ls.setup({
  sources = {
    code_actions.eslint_d,

    formatting.prettier,
    -- formatting.eslint,
    -- formatting.prettier.with({
    --   extra_args = {"--write"}
    -- }),

    diagnostics.eslint.with({
      method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
    }),
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
