Plug 'tpope/vim-fugitive'
"{{{======================================================================================
"required by airline
"======================================================================================}}}

Plug 'rhysd/git-messenger.vim', { 'on': 'GitMessenger' }
"{{{======================================================================================
" It shows the history of commits under the cursor in popup window.
"======================================================================================}}}

Plug 'lambdalisue/gina.vim', { 'on': 'Gina' }
"{{{======================================================================================
" dp, dol, dor
"======================================================================================}}}

Plug 'rhysd/conflict-marker.vim'
"{{{======================================================================================
" <<<<<<< HEAD
" ourselves
" =======
" themselves
" >>>>>>> deadbeef0123
" ct or :ConflictMarkerThemselves; branch to merge
" co or :ConflictMarkerOurselves; local branch
" cb or :ConflictMarkerBoth
" cn or :ConflictMarkerNone
" [x and ]x Jump among Conflict Markers
"======================================================================================}}}
