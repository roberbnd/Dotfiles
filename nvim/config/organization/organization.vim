Plug 'mattn/calendar-vim', { 'on': 'Calendar' }
"{{{======================================================================================
" :Calendar, :CalendarH, :CalendarT
" Fast mappings are provided:
" <LocalLeader>cal: Vertically-split calendar
" <LocalLeader>caL: Horizontally-split calendar
let g:calendar_keys = { 'close': 'Q'}
"======================================================================================}}}


Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install' }
let g:mkdp_theme = 'light'
let g:mkdp_port = '8382'

" Plug 'vimwiki/vimwiki'
" let g:mkdp_auto_close = 0
" let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]


" Take notes
" https://www.reddit.com/r/neovim/comments/x6puiy/notetaking_help_zettelkasten_method/
" Plug 'phaazon/mind.nvim'
" https://github.com/gaoDean/autolist.nvim
" https://github.com/dkarter/bullets.vim
