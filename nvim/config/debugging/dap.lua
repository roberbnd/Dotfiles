local dap = require('dap')
-- 🔴 🔵 🔶
vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpoint', {text='🔵', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='⭐️', texthl='', linehl='', numhl=''})

dap.adapters.ruby = function(callback, config)
  callback {
    type = "server",
    host = "127.0.0.1",
    port = "${port}",
    executable = {
      command = "bundle",
      args = { "exec", "rdbg", "-n", "--open", "--port", "${port}",
        "-c", "--", "bundle", "exec", config.command, config.script,
      },
    },
  }
end

dap.configurations.ruby = {
  {
    type = "ruby",
    name = "debug current file",
    request = "attach",
    localfs = true,
    command = "ruby",
    script = "${file}",
  },
  {
    type = "ruby",
    name = "run current spec file",
    request = "attach",
    localfs = true,
    command = "rspec",
    script = "${file}",
  },
}

-- dap.adapters.ruby = {
--   type = 'executable',
--   command = 'readapt',
--   args = {'exec', 'readapt', 'stdio'},
-- }

-- require'dap-ruby'.setup()
  --  dap.adapters.ruby = {
  --   type = 'server',
  --   host = '127.0.0.1',
  --   port = 38697,
  -- }
  --
  --  dap.adapters.rdbg = {
  --   type = 'server',
  --   host = '127.0.0.1',
  --   port = 38697,
  -- }

-- dap.adapters.ruby = {
--   type = 'server',
--   port = 1234,
--   host = '127.0.0.1'
-- }

-- dap.configurations.ruby = {
  -- {
  --   type = 'ruby',
  --   request = 'attach',
  --   name = 'Rails',
  --   program = 'bundle',
  --   programArgs = {'exec', 'rails', 's'},
  --   useBundler = true
  -- },
  -- {
  --   type = 'ruby',
  --   request = 'launch',
  --   name = 'Rspec',
  --   program = 'bundle',
  --   programArgs = {'exec', 'rspec', '${file}'},
  --   useBundler = true
  -- }
   -- {
   --   type = 'ruby';
   --   name = 'run current spec file';
   --   bundle = 'bundle';
   --   request = 'attach';
   --   command = "rspec";
   --   script = "${file}";
   --   port = 1234;
   --   server = '127.0.0.1';
   --   waiting = 1000;
   -- },
-- }

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
