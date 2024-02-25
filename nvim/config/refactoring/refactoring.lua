local sibling = require("sibling-swap")
sibling.setup({
  use_default_keymaps = false
})
vim.keymap.set('n', '<<', sibling.swap_with_left)
vim.keymap.set('n', '>>', sibling.swap_with_right)

