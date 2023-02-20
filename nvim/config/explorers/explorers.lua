-- require("nvim-tree").setup({
--   -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
--   update_cwd = false
-- })
require'window-picker'.setup({
      -- the foreground (text) color of the picker
    fg_color = '#ededed',

    -- if you have include_current_win == true, then current_win_hl_color will
    -- be highlighted using this background color
    current_win_hl_color = '#e35e4f',

    -- all the windows except the curren window will be highlighted using this
    -- color
    other_win_hl_color = '#153462',
})

require('neo-tree').setup({
  filesystem = {
    follow_current_file=false
  },
  buffers = {
    follow_current_file=false
  }
})

--===========================================================================================================
local actions = require "fzf-lua.actions"
require'fzf-lua'.setup({
   winopts = {
     -- split = "belowright new",
     fullscreen = false,
     preview = {
       layout = 'vertical',
       vertical = 'down:60%',
       -- hidden = 'hidden',
     }
   },
   previewers = {
     git_diff = {
       pager = 'delta'
     }
   },
   actions = {
     buffers = {
       ["ctrl-z"] = actions.buf_tabedit,
       ["ctrl-m"] = actions.buf_edit,
       ["alt-q"]  = actions.buf_sel_to_qf
     },
     files = {
       ["ctrl-z"] = actions.file_tabedit,
       ["ctrl-m"] = actions.file_edit,
       ["alt-q"]  = actions.buf_sel_to_qf
     }
   },
   git = {
     branches = {
       cmd = "git branch"
     }
   }
})

--===========================================================================================================
local telescope = require "telescope"
local actions = require "telescope.actions"
telescope.setup{
  defaults = {
    -- layout_strategy = 'vertical',
    layout_strategy = 'center',
    mappings = {
      i = {
        ["<c-x>"] = actions.select_tab,
        ["<c-d>"] = actions.select_horizontal
      }
    },
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    -- borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
    selection_caret = "  ",
    entry_prefix = "  ",
  },
  extensions ={
    bookmarks = {
      -- Available: 'brave', 'google_chrome', 'safari', 'firefox', 'firefox_dev'
      selected_browser = 'google_chrome',

      -- Either provide a shell command to open the URL
      url_open_command = 'open',
    },
  }
}

telescope.load_extension('neoclip')
telescope.load_extension('workspaces')
-- require('telescope').load_extension('bookmarks')
-- require('telescope').load_extension('fzf')
-- require('telescope').load_extension('hop')
-- require('telescope').load_extension('vim_bookmarks')

-- require('reach').setup({
--   notifications = true,
-- })

--  local options = {
--   auto_handles = require('reach.buffers.constant').auto_handles,
--   auto_exclude_handles = {'1', '2', '3', '4', '5', '6', '7', '8', '9'},
--   handle = 'auto'
-- }
-- require('reach').buffers(options)
