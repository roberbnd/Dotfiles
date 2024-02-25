" https://computingforgeeks.com/bat-cat-command-with-syntax-highlighting-and-git-integration/
" bat --list-languages
" bat --theme=DarkNeon
" export BAT_THEME="DarkNeon"

" colorscheme tokyodark
" colorscheme catppuccin-mocha
" hi visual guibg=#2D313A

" colorscheme monokai-pro
" colorscheme vscode
colorscheme tokyonight-night

" hi WinSeparator guifg=#3FA796 guibg=none
hi HighlightText guifg=white guibg=#362FD9

hi EasyMotionTarget gui=bold guifg=#FFFFFF guibg=#a901d5
hi EasyMotionTarget2First gui=bold guifg=#FFFFFF guibg=#a901d5
hi EasyMotionTarget2Second gui=bold guifg=#FFFFFF guibg=#a901d5
hi EasyMotionShade guibg=none guifg=#4a5057
hi EasyMotionIncSearch gui=bold guifg=white guibg=#a901d5
hi EasyMotionIncSearch gui=bold guifg=white guibg=#a901d5

hi HopNextKey gui=bold guifg=#FFFFFF guibg=#a901d5
hi HopNextKey1 gui=bold guifg=#FFFFFF guibg=#a901d5
hi HopNextKey2 gui=bold guifg=#FFFFFF guibg=#a901d5

hi DiffAdd      gui=none guifg=none guibg=#25394b
hi DiffChange   gui=none guifg=none guibg=#4b592b
hi DiffDelete   gui=none guifg=none guibg=#4b1818
hi DiffText     gui=none guifg=none guibg=#6f1313

au BufEnter * hi! airline_tabsel gui=bold guibg=#76BA99
au BufEnter * hi airline_tabfill guibg=black
au BufEnter * hi! airline_tab gui=bold guibg=#0096c7 guifg=#000000
au BufEnter * hi! airline_tabmod gui=bold guibg=#e63244 guifg=#000000
