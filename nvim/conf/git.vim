Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim', { 'on': 'GitMessenger' }
"{{{======================================================================================
" It shows the history of commits under the cursor in popup window.
"======================================================================================}}}

Plug 'rhysd/conflict-marker.vim'
"{{{======================================================================================
" <<<<<<< HEAD
" ourselves
" =======
" themselves
" >>>>>>> deadbeef0123
" ct or :ConflictMarkerThemselves
" co or :ConflictMarkerOurselves
" cb or :ConflictMarkerBoth
" cn or :ConflictMarkerNone
" [x and ]x Jump among Conflict Markers
"======================================================================================}}}
