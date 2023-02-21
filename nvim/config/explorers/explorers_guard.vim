" Plug 'axkirillov/telescope-changed-files'
" Plug 'freestingo/telescope-changed-files'
" https://github.com/ptethng/telescope-makefile
Plug 'otavioschwanck/telescope-alternate.nvim'
" Plug 'nvim-telescope/telescope-hop.nvim'
" Plug 'dhruvmanila/telescope-bookmarks.nvim', { 'branch': 'main' }
" " Plug 'fhill2/telescope-ultisnips.nvim', { 'branch': 'main' }
" Plug 'camgraff/telescope-tmux.nvim'
" Plug 'tom-anders/telescope-vim-bookmarks.nvim', { 'branch': 'main' }
" Plug 'nvim-telescope/telescope-dap.nvim'
" Plug 'ThePrimeagen/git-worktree.nvim'
" Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make', 'branch': 'main' }
Plug 'nvim-telescope/telescope.nvim'
nnoremap P :Telescope neoclip<cr>
"{{{======================================================================================
"======================================================================================}}}

" Plug 'toppair/reach.nvim'
" Plug 'preservim/nerdtree'
" nnoremap <space><space>j :NERDTreeToggle<cr>
--===========================================================================================================
-- local telescope = require "telescope"
-- local actions = require "telescope.actions"
-- telescope.setup{
--   defaults = {
--     -- layout_strategy = 'vertical',
--     layout_strategy = 'center',
--     mappings = {
--       i = {
--         ["<c-x>"] = actions.select_tab,
--         ["<c-d>"] = actions.select_horizontal
--       }
--     },
--     border = {},
--     borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
--     -- borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
--     selection_caret = "  ",
--     entry_prefix = "  ",
--   },
--   extensions ={
--     bookmarks = {
--       -- Available: 'brave', 'google_chrome', 'safari', 'firefox', 'firefox_dev'
--       selected_browser = 'google_chrome',
--
--       -- Either provide a shell command to open the URL
--       url_open_command = 'open',
--     },
--   }
-- }
--
-- telescope.load_extension('neoclip')
-- telescope.load_extension('workspaces')
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
