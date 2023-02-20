-- configure the litee.nvim library
-- require('litee.lib').setup({
--     tree = {
--         icon_set = "codicons"
--     },
--     panel = {
--         orientation = "left",
--         panel_size  = 30
--     }
-- })
-- configure litee-calltree.nvim

-- local colors = require("tokyonight.colors").setup()

-- require("scrollbar").setup({
--     handle = {
--         color = colors.bg_highlight,
--     },
--     marks = {
--         Search = { color = colors.orange },
--         Error = { color = colors.error },
--         Warn = { color = colors.warning },
--         Info = { color = colors.info },
--         Hint = { color = colors.hint },
--         Misc = { color = colors.purple },
--     }
-- })




--===========================================================================================================

Plug 'sidebar-nvim/sidebar.nvim'
"{{{======================================================================================
"======================================================================================}}}
require'sidebar-nvim'.setup()

" check the error
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
"{{{======================================================================================
" A light-weight lsp plugin based on neovim built-in lsp with highly performance UI.
"======================================================================================}}}
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
nnoremap bu :Lspsaga code_action<cr>
nnoremap <silent> b, *:Lspsaga preview_definition<cr>

nnoremap <silent> <space>w :Lspsaga show_line_diagnostics<cr>
nnoremap <silent> <space><left> :Lspsaga diagnostic_jump_prev<cr>
nnoremap <silent> <space><right> :Lspsaga diagnostic_jump_next<cr>


--===========================================================================================================
require'nvim-tree'.setup({
  view = {
    width = 40
  }
})

=====
local dap = require('dap')

-- theHamsta/nvim-dap-virtual-text and mfussenegger/nvim-dap
vim.g.dap_virtual_text = true

-- dap.adapters.php = {
--   type = 'executable',
--   command = 'node',
--   args = { '/Users/rbanda/workspace/vscode-php-debug/out/phpDebug.js' }
-- }
dap.configurations.php = {
  {
    type = 'php',
    request = 'launch',
    name = 'Listen for Xdebug',
    port = 9000
  }
}

dap.adapters.ruby = {
  type = 'executable';
  command = 'bundle';
  args = {'exec', 'readapt', 'stdio'};
}
dap.configurations.ruby = {
  {
    type = 'ruby';
    request = 'launch';
    name = 'Launch Rspec Debugging';
    program = 'bundle';
    programArgs = {'exec', 'rspec', 'spec/services/big_pay/payments/provider/humm/humm_provider_spec.rb:26'};
  },
}

vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='🟦', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='⭐️', texthl='', linehl='', numhl=''})
-- dap.configurations.ruby = {
--   { type = 'ruby'; request = 'attach'; name = 'Rails'; program = 'bundle'; programArgs = {'exec', 'rails', 's'}; useBundler = true; },
-- }

-- dap.configurations.python = {
--   {
--     -- The first three options are required by nvim-dap
--     type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
--     request = 'launch';
--     name = "Launch file";
--
--     -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options
--
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
--
-- dap.configurations.cs = {
--   {
--     type = "netcoredbg",
--     name = "launch - netcoredbg",
--     request = "launch",
--     program = function()
--         return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
--     end,
--   },
-- }
--
-- dap.adapters.node2 = {
--   type = 'executable',
--   command = 'node',
--   args = {os.getenv('HOME') .. '/workspace/dap/vscode-js-debug/out/src/debugServerMain.js'},
-- }
