local custom_attach = function(client)
    require'completion'.on_attach(client)
    require'folding'.on_attach()
    require"lsp_signature".on_attach({
      bind = true,
      handler_opts = {border = "single"},
      decorator = {"`", "`"}
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

-- Lua
local cb = require'diffview.config'.diffview_callback

require'diffview'.setup {
  diff_binaries = false,    -- Show diffs for binaries
  file_panel = {
    width = 35,
    use_icons = true        -- Requires nvim-web-devicons
  },
  key_bindings = {
    -- The `view` bindings are active in the diff buffers, only when the current
    -- tabpage is a Diffview.
    view = {
      ["<tab>"]     = cb("select_next_entry"),  -- Open the diff for the next file 
      ["<s-tab>"]   = cb("select_prev_entry"),  -- Open the diff for the previous file
      ["<leader>e"] = cb("focus_files"),        -- Bring focus to the files panel
      ["<leader>b"] = cb("toggle_files"),       -- Toggle the files panel.
    },
    file_panel = {
      ["j"]         = cb("next_entry"),         -- Bring the cursor to the next file entry
      ["<down>"]    = cb("next_entry"),
      ["k"]         = cb("prev_entry"),         -- Bring the cursor to the previous file entry.
      ["<up>"]      = cb("prev_entry"),
      ["<cr>"]      = cb("select_entry"),       -- Open the diff for the selected entry.
      ["o"]         = cb("select_entry"),
      ["R"]         = cb("refresh_files"),      -- Update stats and entries in the file list.
      ["<tab>"]     = cb("select_next_entry"),
      ["<s-tab>"]   = cb("select_prev_entry"),
      ["<leader>e"] = cb("focus_files"),
      ["<leader>b"] = cb("toggle_files"),
    }
  }
}
