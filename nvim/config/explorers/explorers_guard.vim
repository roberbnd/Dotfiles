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
Plug 'nvim-tree/nvim-tree.lua'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"{{{======================================================================================
" require bat
" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

" - down / up / left / right
" let g:fzf_layout = { 'up': '50%' }
" let g:fzf_layout = { 'down': '100%' }
let g:fzf_layout = { 'up': '100%' }
" let g:fzf_layout = { 'window': '-tabnew' }

" CTRL-a will toggle preview window.
" let g:fzf_preview_window = ['down:50%:hidden', 'ctrl-a']
let g:fzf_preview_window = ['down:50%', 'ctrl-a']

let g:fzf_action = { 'ctrl-q': function('s:build_quickfix_list'), 'ctrl-x': 'tab split' }

" Jump to existing window/tab when using :Buffers
let g:fzf_buffers_jump = 1
"======================================================================================}}}
