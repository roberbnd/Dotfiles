Plug 'xolox/vim-misc'
Plug 'xolox/vim-session', { 'on': ['SaveSession', 'OpenSession'] }
"{{{======================================================================================
let g:session_directory='~/.config/nvim/sessions'
let g:session_autosave='no'
"======================================================================================}}}

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install', 'on': 'MarkdownPreview' }
"{{{======================================================================================
let g:mkdp_auto_close = 0
let g:mkdp_markdown_css = '~/.md.css'
"======================================================================================}}}

Plug 'mattn/calendar-vim', { 'on': 'Calendar' }
"{{{======================================================================================
" :Calendar, :CalendarH, :CalendarT
" Fast mappings are provided:
" <LocalLeader>cal: Vertically-split calendar
" <LocalLeader>caL: Horizontally-split calendar
let g:calendar_keys = { 'close': 'Q'}
"======================================================================================}}}
