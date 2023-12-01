require'pqf'.setup()

require'workspaces'.setup({
   hooks = {
        open = { "FzfLua git_files", "echo 'hello'" },
    }
})
