require'hop'.setup()
require("easy-action").setup({})
require"syntax-tree-surfer".setup()
vim.keymap.set("n", "<leader><leader>w", function()
  local picked_window_id = require("window-picker").pick_window() or vim.api.nvim_get_current_win()
  vim.api.nvim_set_current_win(picked_window_id)
end, { desc = "Pick a window" })
