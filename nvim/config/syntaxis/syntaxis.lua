require('colorizer').setup({
  user_default_options = {
    tailwind = true
  }
})

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
