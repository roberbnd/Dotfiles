require('spectre').setup()
require'pqf'.setup()

require'workspaces'.setup({
   hooks = {
        open = { "FzfLua git_files", "echo 'hello'" },
    }
})

-- require('telescope').load_extension('vim_bookmarks')

require("harpoon").setup({
  menu = {
    width = 120
    -- width = vim.api.nvim_win_get_width(0) - 4,
  }
})

require'trouble'.setup({
  height = 15,
  auto_preview = false
})
