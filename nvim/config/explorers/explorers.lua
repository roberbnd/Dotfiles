require("telescope").load_extension("advanced_git_search")

-- require'window-picker'.setup({
--       -- the foreground (text) color of the picker
--     fg_color = '#ededed',
--
--     -- if you have include_current_win == true, then current_win_hl_color will
--     -- be highlighted using this background color
--     current_win_hl_color = '#e35e4f',
--
--     -- all the windows except the curren window will be highlighted using this
--     -- color
--     other_win_hl_color = '#153462',
-- })

-- require('neo-tree').setup({
--   filesystem = {
--     follow_current_file=false
--   },
--   buffers = {
--     follow_current_file=false
--   }
-- })

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
