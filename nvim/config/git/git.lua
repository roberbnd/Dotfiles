require('fixer').setup{}
require('neogit').setup{}

require('git-conflict').setup({
  default_mappings = false, -- disable buffer local mapping created by this plugin
  disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
  -- highlights = { -- They must have background color, otherwise the default color will be used
  --   incoming = 'DiffText',
  --   current = 'DiffAdd',
  -- }
})

-- TODO: requires telescope, create a PR to support fzflua
-- require'octo'.setup({
--    mappings = {
--     issue = {
--         open_in_browser = { lhs = "<space>B", desc = "open issue in browser" }
--      },
--     pull_request = {
--         open_in_browser = { lhs = "<space>B", desc = "open issue in browser" }
--      }
--    }
--  })

require("diffview").setup({
  enhanced_diff_hl = true,
   win_config = {
     width = 50,
   }
})

require'gitsigns'.setup{
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 50,
    ignore_whitespace = false,
  },
  -- current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
  current_line_blame_formatter = '<author> - <summary>',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000, -- Disable if file is longer than this (in lines)
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
  diff_opts = {
    internal = true
  },
  show_deleted = false,
  -- current_line_blame_opts = {
  --   ignore_whitespace = true
  -- },
  trouble = true
}
