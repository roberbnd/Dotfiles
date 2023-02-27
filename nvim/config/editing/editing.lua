require'neoclip'.setup()
require("nvim-surround").setup({})

require('Comment').setup()
local ft = require('Comment.ft')
ft.set('http', '# %s')
