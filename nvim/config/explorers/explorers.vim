" fzf: https://github.com/junegunn/fzf#installation

Plug 'nvim-tree/nvim-tree.lua'
Plug 'MunifTanjim/nui.nvim'
Plug 's1n7ax/nvim-window-picker'
Plug 'nvim-neo-tree/neo-tree.nvim'
" " issues with easymotion color target
hi! EasyMotionShade guifg=none guibg=none

" Plug 'preservim/nerdtree'
" nnoremap <space><space>j :NERDTreeToggle<cr>

Plug 'ibhagwan/fzf-lua'
"{{{======================================================================================
" https://github.com/ibhagwan/fzf-lua/blob/main/doc/fzf-lua.txt
" ["shift-down"]  = "preview-page-down",
" ["shift-up"]    = "preview-page-up",
" ["<F4>"]        = "toggle-preview",
"======================================================================================}}}

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
