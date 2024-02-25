" all trailing whitespace characters (see Supported Whitespace Characters below) to be highlighted.
" :StripWhitespace
" :StripWhitespaceOnChangedLines
Plug 'ntpeters/vim-better-whitespace'

" let g:no_plugin_maps = true
let g:bclose_no_plugin_maps = 1
let g:no_plugin_maps = 1
Plug 'rbgrouleff/bclose.vim'

" use the plugin bufexplorer to delete one by one
" :Bdelete other 🔥 	bdelete all buffers except the buffer in the current window
" :Bdelete hidden 🔥 	bdelete buffers not visible in a window
" :Bdelete all 	bdelete all buffers 	:bufdo bdelete
" :Bdelete this 	bdelete buffer in the current window 	:bdelete
" :Bdelete nameless 	bdelete buffers without a name: [No Name]
" :Bdelete select 	Lets you interactively select which buffers to bdelete
" :Bdelete menu 	Lets you interactively choose one of the other commands above
Plug 'Asheq/close-buffers.vim', { 'on': 'Bdelete' }

" :Delete and :Rename
Plug 'tpope/vim-eunuch'

Plug 'mbbill/undotree'
