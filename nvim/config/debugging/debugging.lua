-- https://alpha2phi.medium.com/neovim-for-beginners-debugging-using-dap-44626a767f57
local hydra = require('hydra')

-- mapping body with <space> has conflicts with plugin which-key <space>
hydra({
  name = 'Debugging mode',
  mode = { 'n' },
  body = '<space><space>d',
  heads = {
    {'h', ":echo 'hola'<cr>"},
    {'<esc>', nil, {exit = true, nowait = true}}
  },
  config = {
    exit = false
  }
})

-- with require'dap'.continue() starts debugging
-- "Dap {{{======================================
-- nnoremap +p :lua require'dap'.toggle_breakpoint()<cr>
-- nnoremap +c :lua require'dap'.continue()<cr>
-- " " nnoremap <space><space> :lua require"dap.ui.variables".hover()<cr>
-- " nnoremap ,B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>
-- " nnoremap ,t :lua require'dap'.step_out()<cr>
-- " nnoremap ,k :lua require'dap'.step_over()<cr>
-- " nnoremap ,dk :lua require'dap'.up()<cr>
-- " nnoremap ,dc :lua require"dap".disconnect({ terminateDebuggee = true });require"dap".close()<cr>
-- " nnoremap ,r :lua require"dap".repl.toggle({}, "vsplit")<cr><C-w>l
-- " nnoremap ,v :lua require"dap.ui.variables".scopes()<cr>
-- " -- map('n', ',di', ':lua require"dap.ui.variables".visual_hover()<cr>')
-- " -- map('n', ',d?', ':lua require"dap.ui.variables".scopes()<cr>')
-- " -- map('n', ',de', ':lua require"dap".set_exception_breakpoints({"all"})<cr>')
-- " -- map('n', ',dA', ':lua require"debugHelper".attachToRemote()<cr>')
-- " -- map('n', ',di', ':lua require"dap.ui.widgets".hover()<cr>')
-- " -- map('n', ',d?', ':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<cr>')
-- "}}}==========================================


-- 🔴 🔵 🔶 ⭐️
vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpoint', {text='🔵', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='⭐️', texthl='', linehl='', numhl=''})

vim.cmd('source ~/.config/nvim/config/debugging/debugging_ruby.lua')
vim.cmd('source ~/.config/nvim/config/debugging/debugging_python.lua')
vim.cmd('source ~/.config/nvim/config/debugging/debugging_javascript.lua')
vim.cmd('source ~/.config/nvim/config/debugging/debugging_php.lua')
