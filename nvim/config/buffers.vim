Plug 'rbgrouleff/bclose.vim'
"{{{======================================================================================
" let g:no_plugin_maps = true
let g:bclose_no_plugin_maps = 1
let g:no_plugin_maps = 1
"======================================================================================}}}

Plug 'Asheq/close-buffers.vim', { 'on': 'Bdelete' }
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

Plug 'tpope/vim-eunuch'
"{{{======================================================================================
" :Delete and :Rename
"======================================================================================}}}

Plug 'mbbill/undotree'
