Plug 'edkolev/tmuxline.vim'
"{{{======================================================================================
" tmux statusline generator with support for powerline symbols and lightline
let g:tmuxline_powerline_separators = 0
let g:tmuxline_status_justify = 'left'
let g:tmuxline_preset = {
  \'a': '#S',
  \'win': '#I #W',
  \'cwin': '#I #W',
  \'x': '%a',
  \'y': '%R'
\}
"======================================================================================}}}
