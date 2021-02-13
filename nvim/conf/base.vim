Plug 'neovim/nvim-lspconfig'
"{{{======================================================================================
" Collection of common configurations for Neovim's built-in language server client.
"======================================================================================}}}

Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
"{{{======================================================================================
" A light-weight lsp plugin based on neovim built-in lsp with highly performance UI.
"======================================================================================}}}

Plug 'nvim-lua/completion-nvim'
"{{{======================================================================================
" completion-nvim is an auto completion framework that aims to provide a better
" completion experience with neovim's built-in LSP. Other LSP functionality is
" not supported.
" use <c-x><c-f> path completition menu
let g:completion_enable_snippet = 'UltiSnips'
let g:completion_trigger_keyword_length = 1
"======================================================================================}}}

Plug 'SirVer/ultisnips'
"{{{======================================================================================
let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsJumpBackwardTrigger="<c-w>"
let g:UltiSnipsJumpForwardTrigger="<c-z>"
"======================================================================================}}}

Plug 'voldikss/vim-floaterm'
"{{{======================================================================================
" float terminal
let g:floaterm_width = &columns
let g:floaterm_height = &lines-2
" let g:floaterm_autoinsert=0
"======================================================================================}}}

Plug 'rbgrouleff/bclose.vim'
"{{{======================================================================================
"======================================================================================}}}

Plug 'easymotion/vim-easymotion'
"{{{======================================================================================
" EasyMotion provides a much simpler way to use some motions in vim
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1
let g:EasyMotion_do_mapping = 0
"======================================================================================}}}

Plug 'haya14busa/vim-asterisk'
"{{{======================================================================================
" asterisk.vim provides improved * motions.
"======================================================================================}}}

Plug 'liuchengxu/vista.vim'
"{{{======================================================================================
" require ctags, ptags
" Viewer & Finder for LSP symbols and tags in Vim
" use ptags generate the tags file
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 1
let g:vista_default_executive = 'nvim_lsp'
let g:vista_sidebar_position = 'vertical topleft'
let g:vista_sidebar_width='25'
"======================================================================================}}}

Plug 'machakann/vim-sandwich'
"{{{======================================================================================
" sandwich.vim is a set of operator and textobject plugins to add/delete/replace
" surroundings of a sandwiched textobject, like (foo), "bar".
"======================================================================================}}}

Plug 'tpope/vim-commentary'
"{{{======================================================================================
" gcc
" <c-_>p Comment the current inner paragraph
"======================================================================================}}}

Plug 'zhimsel/vim-stay'
"{{{======================================================================================
" vim-stay adds automated view session creation and
" estoration whenever editing a buffer, across Vim
" sessions and window life cycles. It also alleviates
" Vim's tendency to lose view state when cycling through
" buffers (via argdo, bufdo et al.). It is smart about
" which buffers should be persisted and which should not,
" making the procedure painless and invisible.
"======================================================================================}}}

" Plug 'andymass/vim-matchup'
"{{{======================================================================================
" vim match-up: even better % fist_oncoming navigate and highlight matching words
" fist_oncoming modern matchit and matchparen replacement
" let g:matchup_matchparen_enabled = 0
"======================================================================================}}}

Plug 'markonm/traces.vim'
"{{{======================================================================================
" Preview in substitute
"======================================================================================}}}

Plug 'MattesGroeger/vim-bookmarks'
"{{{======================================================================================
" Add/remove bookmark at current line 	mm                : BookmarkToggle
" Add/edit/remove annotation at current line 	mi          : BookmarkAnnotate <TEXT>
" Jump to next bookmark in buffer 	mn                    : BookmarkNext
" Jump to previous bookmark in buffer 	mp                : BookmarkPrev
" Show all bookmarks (toggle) 	ma                        : BookmarkShowAll
" Clear bookmarks in current buffer only 	mc              : BookmarkClear
" Clear bookmarks in all buffers 	mx                      : BookmarkClearAll
" Move up bookmark at current line 	[count]mkk            : BookmarkMoveUp [<COUNT>]
" Move down bookmark at current line 	[count]mjj          : BookmarkMoveDown [<COUNT>]
" Move bookmark at current line to another line [count]mg : BookmarkMoveToLine <LINE>
" Save all bookmarks to a file                            : BookmarkSave <FILE_PATH>
" Load bookmarks from a file                              : BookmarkLoad <FILE_PATH>
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:bookmark_highlight_lines = 1
let g:bookmark_sign = '🔥'
let g:bookmark_no_default_key_mappings = 1
"======================================================================================}}}

Plug 'christoomey/vim-tmux-navigator'
"{{{======================================================================================
" I need because <c-h> is not working
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
let g:fzf_layout = { 'down': '100%' }
" CTRL-a will toggle preview window.
let g:fzf_preview_window = ['down:60%', 'ctrl-a']
let g:fzf_action = {
            \ 'ctrl-q': function('s:build_quickfix_list'),
            \ 'ctrl-x': 'tab split' }
let g:fzf_buffers_jump = 1
"======================================================================================}}}

Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }

Plug 'jlanzarotta/bufexplorer'
"{{{======================================================================================
let g:bufExplorerDisableDefaultKeyMapping=1
let g:bufExplorerShowNoName=1
let g:bufExplorerShowRelativePath=1
"======================================================================================}}}

Plug 'kevinhwang91/nvim-bqf', { 'branch': 'main' }
"{{{======================================================================================
"======================================================================================}}}

Plug 'svermeulen/vim-yoink'
"{{{======================================================================================
"======================================================================================}}}

Plug 'Asheq/close-buffers.vim'
"{{{======================================================================================
" use the plugin bufexplorer to delete one by one
" :Bdelete other 🔥 	bdelete all buffers except the buffer in the current window
" :Bdelete hidden 🔥 	bdelete buffers not visible in a window
" :Bdelete all 	bdelete all buffers 	:bufdo bdelete
" :Bdelete this 	bdelete buffer in the current window 	:bdelete
" :Bdelete nameless 	bdelete buffers without a name: [No Name]
" :Bdelete select 	Lets you interactively select which buffers to bdelete
" :Bdelete menu 	Lets you interactively choose one of the other commands above
"======================================================================================}}}
