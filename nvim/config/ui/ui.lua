vim.cmd('source ~/.config/nvim/config/theme/dark_theme.vim')

require('todo-comments').setup()
require('twilight').setup()
require('maximize').setup()

require('bufferline').setup{
  options = {
    mode = 'tabs'
  }
}

local wk = require("which-key")
wk.register({b={name='Buffer'}}, { prefix = "<leader>" })
wk.register({f={name='File'}}, { prefix = "<leader>" })
wk.register({p={name='Project'}}, { prefix = "<leader>" })
wk.register({g={name='Git'}}, { prefix = "<leader>" })
wk.register({s={name='Split'}}, { prefix = "<leader>" })
wk.register({R={name='Rest'}}, { prefix = "<leader>" })
wk.register({t={name='Tab'}}, { prefix = "<leader>" })
wk.register({n={name='Neotree'}}, { prefix = "<leader>" })

local function filename()
   return vim.fn.expand('%')
end

local function workspace_filename()
   -- return string.match(vim.fn.getcwd(), '%w+-?%w+-?%w+$')
   return string.match(vim.fn.getcwd(), '%w+$')
end

local function maximize_status()
  return vim.t.maximized and '   ' or ''
end

local function scrollbind()
  return vim.o.scrollbind and '  ' or ''
end

-- local navic = require('nvim-navic')
-- navic.setup {
--   icons = {
--     File          = " ",
--     Module        = " ",
--     Namespace     = " ",
--     Package       = " ",
--     Class         = " ",
--     Method        = " ",
--     Property      = " ",
--     Field         = " ",
--     Constructor   = " ",
--     Enum          = "練",
--     Interface     = "練",
--     Function      = " ",
--     Variable      = " ",
--     Constant      = " ",
--     String        = " ",
--     Number        = " ",
--     Boolean       = "◩ ",
--     Array         = " ",
--     Object        = " ",
--     Key           = " ",
--     Null          = "ﳠ ",
--     EnumMember    = " ",
--     Struct        = " ",
--     Event         = " ",
--     Operator      = " ",
--     TypeParameter = " ",
--   },
--   highlight = true,
--   separator = " ➜ ",
--   depth_limit = 0,
--   depth_limit_indicator = "..",
--   safe_output = true
-- }

require('lualine').setup({
  options = {
    theme = 'tokyodark',
  },
  sections = {
    lualine_c = {workspace_filename},
  },
  winbar = {
    lualine_c = { maximize_status, scrollbind, 'filename',
      function()
        local key = require("grapple").key()
        return key and "" or ''
      end,
    },
    lualine_x = {
      {"aerial"}
    },
  },
  inactive_winbar = {
    lualine_c = { scrollbind, 'filename' },
    lualine_x = {
      {"aerial"}
    }
  },
})
