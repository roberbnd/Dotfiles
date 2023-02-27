require('spectre').setup()
require'pqf'.setup()

require'workspaces'.setup({
   hooks = {
        open = { "FzfLua git_files", "echo 'hello'" },
    }
})

require'trouble'.setup({
  height = 15,
  auto_preview = false
})
