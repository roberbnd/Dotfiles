Plug 'neoclide/coc.nvim', {'branch': 'release'}
"{{{======================================================================================
" require solargraph
let g:coc_global_extensions = [
  \ 'coc-go', 'coc-lua', 'coc-python', 'coc-solargraph', 'coc-rls',
  \ 'coc-emmet', 'coc-html', 'coc-lit-html', 'coc-css', 'coc-cssmodules',
  \ 'coc-tslint', 'coc-tslint-plugin', 'coc-tsserver', 'coc-eslint', 'coc-docker',
  \ 'coc-prettier', 'coc-jest', 'coc-json', 'coc-yaml', 'coc-tailwindcss',
  \ 'coc-lists', 'coc-word', 'coc-translator', 'coc-github', 'coc-phpls',
  \ 'coc-post', 'coc-project', 'coc-pairs', 'coc-highlight', 'coc-snippets',
  \ 'coc-marketplace', 'coc-git', 'coc-markmap', 'coc-gitignore', 'coc-yank',
  \ 'coc-todolist', 'coc-pyright', 'coc-vetur', 'coc-elixir', 'coc-diagnostic',
  \ 'coc-emoji', 'coc-dictionary', 'coc-syntax'
  \ ]
"======================================================================================}}}

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"{{{======================================================================================
" require bat
let g:fzf_layout = { 'down': '100%' }
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_preview_window = 'down:60%'
let g:fzf_tags_command = '~/Downloads/ptags'
"======================================================================================}}}

Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
"{{{======================================================================================
" File manager
"======================================================================================}}}

Plug 'vim-test/vim-test'
Plug 'neomake/neomake'
"{{{======================================================================================
" A Vim wrapper for running tests on different granularities.
let test#strategy = "neomake"
"======================================================================================}}}

Plug 'puremourning/vimspector'
"{{{======================================================================================
" Debugger
" let g:vimspector_enable_mappings = 'HUMAN'
sign define vimspectorBP text=🔴 texthl=Normal
sign define vimspectorBPDisabled text=🔵 texthl=Normal
sign define vimspectorPC text=🔶 texthl=SpellBad
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
let g:vista_default_executive = 'coc'
"======================================================================================}}}

Plug 'machakann/vim-sandwich'
"{{{======================================================================================
" sandwich.vim is a set of operator and textobject plugins to add/delete/replace
" surroundings of a sandwiched textobject, like (foo), "bar".
"======================================================================================}}}

Plug 'tomtom/tcomment_vim'
"{{{======================================================================================
" gcc
" <c-_>p Comment the current inner paragraph
"======================================================================================}}}

Plug 'dahu/insertlessly'
"{{{======================================================================================
" Enter and return in normal mode are working like insert mode
let g:insertlessly_insert_spaces = 0
let g:insertlessly_cleanup_trailing_ws = 0
let g:insertlessly_cleanup_all_ws = 0
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

Plug 'arithran/vim-delete-hidden-buffers', { 'on': 'DeleteHiddenBuffers'}
"{{{======================================================================================
" Delete all the buffers except the currrent
"======================================================================================}}}

Plug 'andymass/vim-matchup'
"{{{======================================================================================
" vim match-up: even better % fist_oncoming navigate and highlight matching words
" fist_oncoming modern matchit and matchparen replacement
let g:matchup_matchparen_enabled = 0
"======================================================================================}}}

Plug 'scrooloose/nerdtree'
"{{{======================================================================================
let g:NERDTreeMapMenu = '\'
let g:NERDTreeWinSize = 25
let NERDTreeShowHidden=1
" let g:Webdevicons_conceal_nerdtree_brackets = 0
" let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
" Disable arrow icons at the left side of folders for NERDTree.
" let g:NERDTreeDirArrowExpandable = "\u00a0"
" let g:NERDTreeDirArrowCollapsible = "\u00a0"
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
"======================================================================================}}}

Plug 'markonm/traces.vim'
"{{{======================================================================================
" Preview in substitute
"======================================================================================}}}

Plug 'MattesGroeger/vim-bookmarks'
Plug 'ctrlpvim/ctrlp.vim'
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
"======================================================================================}}}

"{{{======================================================================================
" Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode.
" Run :CtrlPBuffer or :CtrlPMRU to invoke CtrlP in find buffer or find MRU file mode.
" Run :CtrlPMixed to search in Files, Buffers and MRU files at the same time.
let g:ctrlp_max_files=0
let g:ctrlp_max_depth = 40
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir', 'tmux', 'mpc', 'smarttabs']
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_show_hidden = 1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
"======================================================================================}}}

Plug 'tpope/vim-sleuth'
"{{{======================================================================================
" adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file
"======================================================================================}}}
