Plug 'christoomey/vim-tmux-navigator'
"{{{======================================================================================
" This plugin provides the following mappings which allow you to move between Vim panes
" and tmux splits seamlessly.
    " <ctrl-h> => Left
    " <ctrl-j> => Down
    " <ctrl-k> => Up
    " <ctrl-l> => Right
    " <ctrl-\> => Previous split
" Note - you don't need to use your tmux prefix key sequence before using the mappings.
let g:tmux_navigator_no_mappings = 1
"======================================================================================}}}

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
