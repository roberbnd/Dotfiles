Plug 'ThePrimeagen/harpoon'
nnoremap e, :lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap ea :lua require("harpoon.mark").add_file()<cr>
require("harpoon").setup({
  menu = {
    width = 120
    -- width = vim.api.nvim_win_get_width(0) - 4,
  }
})

