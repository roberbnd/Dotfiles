" colorscheme github_light
" hi LineNr guifg=black
" hi Visual gui=bold guibg=#2ec4b6 guifg=reverse

" let g:tokyonight_style = "day"
" colorscheme tokyonight
" hi TabLine  guifg=black

" colorscheme vscode
" lua vim.o.background = "light"

" latte, frappe, macchiato, mocha
let g:catppuccin_flavour = "latte"
colorscheme catppuccin
hi TabLine  guifg=black
hi TabLineSel gui=none guibg=#005055 guifg=#FFFFFF

hi CursorLineNr guibg=#2980b9 guifg=black gui=bold
hi Search guibg=orange
hi EasyMotionIncSearch guibg=orange
hi CursorLineNr guibg=#2980b9 guifg=white gui=bold
hi Comment gui=italic guifg=#1765E3
hi WinSeparator guibg=none guifg=black

hi DiffAdd guifg=reverse guibg=#b1d7ff
hi DiffDelete guifg=reverse guibg=#fac0c2
hi DiffChange guifg=reverse guibg=orange
hi DiffText guibg=reverse guifg=blue

" hi TabLineSel gui=none guibg=#007077 guifg=#FFFFFF
" hi TabLineFill guibg=white

source ~/.config/nvim/conf/general_highlight.vim
