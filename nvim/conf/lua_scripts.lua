local custom_attach = function(client)
    require'completion'.on_attach(client)
    require"lsp_signature".on_attach({
      bind = true,
      handler_opts = {border = "single"},
      decorator = {"`", "`"}
    })
end

-- Lsp server
require'lspconfig'.intelephense.setup{
  on_attach = custom_attach,
  diagnostics = true,
}
require'lspconfig'.jsonls.setup{on_attach = custom_attach}
require'lspconfig'.pyls.setup{on_attach = custom_attach}
-- https://github.com/castwide/solargraph/issues/87
-- go to definition of the gem
-- solargraph bundle
require'lspconfig'.solargraph.setup{
  on_attach = custom_attach,
  diagnostics = true,
  -- useBundler = true,
}
require'lspconfig'.tsserver.setup{on_attach = custom_attach}
require'lspconfig'.vimls.setup{on_attach = custom_attach}

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.html.setup {
  capabilities = capabilities,
}
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

-- LSP Icons
require'lspkind'.init()
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
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
require'trouble'.setup({
  height = 5
})

require'lspsaga'.init_lsp_saga {
    code_action_icon = '💡',
    infor_sign = 'ℹ️',
    warn_sign = '⚠️',
    error_sign = '❌',
    hint_sign = '🔍',
    code_action_prompt = {
      enable = false,
      sign = true,
      sign_priority = 20,
      virtual_text = true,
    },
}

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

require('lualine').setup({
  options = {theme = 'material'},
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {},
    lualine_z = {'location'}
  },
})

-- local dap = require('dap')

-- dap.run({
--   type = 'node2',
--   request = 'attach',
--   address = "127.0.0.1",
--   port = 9229,
--   localRoot = vim.fn.getcwd(),
--   remoteRoot = "/home/vcap/app",
--   sourceMaps = true,
--   protocol = 'inspector',
--   skipFiles = {'<node_internals>/**/*.js'},
-- })

-- dap.adapters.node2 = {
--   type = 'executable',
--   command = 'node',
--   args = {os.getenv('HOME') .. '/workspace/vscode-node-debug2/out/src/nodeDebug.js'},
-- }

-- dap.configurations.javascript = {
--   {
--     type = 'node2',
--     workspace = '${workspaceFolder}',
--     request = 'launch',
--     program = '${workspaceFolder}/${file}',
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = 'inspector',
--     console = 'integratedTerminal',
--   },
-- }

-- dap.adapters.ruby = {
--   type = 'executable';
--   command = 'bundle';
--   args = {'exec', 'readapt', 'stdio'};
-- }

-- dap.configurations.ruby = {
--   {
--     type = 'ruby';
--     request = 'launch';
--     name = 'Rails';
--     program = 'bundle';
--     programArgs = {'exec', 'rails', 's'};
--     useBundler = true;
--   },
-- }

-- dap.adapters.python = {
--   type = 'executable';
--   command = os.getenv('HOME') .. 'workspace/virtual/bin/python';
--   args = { '-m', 'debugpy.adapter' };
-- }

-- dap.configurations.python = {
--   {
--     -- The first three options are required by nvim-dap
--     type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
--     request = 'launch';
--     name = "Launch file";

--     -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

--     program = "${file}"; -- This configuration will launch the current file if used.
--     pythonPath = function()
--       -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
--       -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
--       -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
--       local cwd = vim.fn.getcwd()
--       if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
--         return cwd .. '/venv/bin/python'
--       elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
--         return cwd .. '/.venv/bin/python'
--       else
--         return '/usr/bin/python'
--       end
--     end;
--   },
-- }

vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='⭐️', texthl='', linehl='', numhl=''})
