-- https://www.reddit.com/r/neovim/comments/y7dvva/typescript_debugging_in_neovim_with_nvimdap/
-- https://github.com/mxsdev/nvim-dap-vscode-js
local dap = require('dap')

require("dap-vscode-js").setup({
  -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  -- debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation.
  -- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
  adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
  -- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
  -- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
  -- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
})

for _, language in ipairs({ "typescript", "javascript", "javascriptreact", "typescriptreact" }) do
  require("dap").configurations[language] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${workspaceFolder}",
      sourceMaps = true,
      resolveSourceMapLocations = {
        '/Users/rbanda/.local/share/nvim/site/pack/packer/opt/vscode-js-debug/out/src/targets/out/src/common/**.js'
      }
    },
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require'dap.utils'.pick_process,
      cwd = "${workspaceFolder}",
      sourceMaps = true,
      resolveSourceMapLocations = {
        '/Users/rbanda/.local/share/nvim/site/pack/packer/opt/vscode-js-debug/out/src/targets/out/src/common/**.js'
      }
    },
    {
      type = "pwa-node",
      request = "launch",
      name = "Debug Jest Tests",
      -- trace = true, -- include debugger info
      runtimeExecutable = "jest",
      runtimeArgs = {
        "--runInBand",
        "${relativeFile}"
      },
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      console = "integratedTerminal",
      internalConsoleOptions = "neverOpen",
      -- sourceMaps = true,
      -- resolveSourceMapLocations = {
      --   '/Users/rbanda/.local/share/nvim/site/pack/packer/opt/vscode-js-debug/src/common/**.js'
      -- }
    }
  }
end
