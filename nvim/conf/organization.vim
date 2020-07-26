Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
"{{{======================================================================================
let g:session_directory='~/.config/nvim/sessions'
let g:session_autosave='no'
"======================================================================================}}}

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
"{{{======================================================================================
let g:mkdp_auto_close = 0
let g:mkdp_markdown_css = '~/.md.css'
"======================================================================================}}}

Plug 'mattn/calendar-vim'
"{{{======================================================================================
" :Calendar, :CalendarH, :CalendarT
" Fast mappings are provided:
" <LocalLeader>cal: Vertically-split calendar
" <LocalLeader>caL: Horizontally-split calendar
"======================================================================================}}}

Plug 'vitalk/vim-simple-todo'
"{{{======================================================================================
let g:simple_todo_map_keys = 0
"======================================================================================}}}
