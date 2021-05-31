colorscheme monokai_pro
" colorscheme tokyonight

" base highlight
hi Visual gui=bold guibg=#085101 guifg=reverse
hi CursorLine gui=NONE guibg=NONE
hi Comment gui=italic guifg=#1765E3
hi LineNr guifg=#FFFFFF
hi Search guifg=black guibg=yellow
"listchars colors; :h listchars"
" hi NonText guifg=#FF0000
hi NonText guifg=#666666
hi diffRemoved guifg=yellow
hi diffAdded guifg=orange
hi Pmenu guibg=#000000
hi MatchParen gui=bold guibg=#a901d5 guifg=#FFFFFF

hi ConflictMarkerBegin guibg=#2f7366
hi ConflictMarkerOurs guibg=#2e5049
hi ConflictMarkerTheirs guibg=#344f69
hi ConflictMarkerEnd guibg=#2f628e
hi ConflictMarkerCommonAncestorsHunk guibg=#754a81

hi HighlightText gui=bold guifg=#FFFFFF guibg=#a901d5

hi HopNextKey gui=bold guifg=#FFFFFF guibg=#1765E3
hi HopNextKey1 gui=bold guifg=#FFFFFF guibg=#1765E3
hi HopNextKey2 gui=bold guifg=#FFFFFF guibg=#1765E3

hi EasyMotionShade guifg=#607D8B
hi EasyMotionTarget gui=bold guifg=#FFFFFF guibg=#1765E3

au VimEnter * hi! airline_tabsel gui=bold
au VimEnter * hi! airline_tab gui=bold guibg=#0096c7 guifg=#000000
au VimEnter * hi! airline_tabmod gui=bold guibg=#e63244 guifg=#000000

hi Comment gui=italic guifg=#00CCFF
