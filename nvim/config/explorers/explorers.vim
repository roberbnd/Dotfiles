" fzf: https://github.com/junegunn/fzf#installation

Plug 'nvim-tree/nvim-tree.lua'
Plug 'MunifTanjim/nui.nvim'
Plug 's1n7ax/nvim-window-picker'
Plug 'nvim-neo-tree/neo-tree.nvim'

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
