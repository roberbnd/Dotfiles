" Plug 'tpope/vim-commentary'
" Plug 'windwp/nvim-autopairs'
Plug 'mattn/emmet-vim'
"{{{======================================================================================
let g:user_emmet_leader_key='<c-z>'
"======================================================================================}}}

" Plug 'chrisgrieser/nvim-recorder'
" https://www.reddit.com/r/neovim/comments/1085spm/introducing_nvimrecorder_a_plugin_to_enhance_your/

Plug 'AndrewRadev/tagalong.vim', { 'branch': 'main' }
"{{{======================================================================================
" The plugin is designed to automatically rename closing HTML/XML tags when editing
" opening ones (or the other way around).
let g:tagalong_mappings = ['c', 'C']
let g:tagalong_additional_filetypes = ['javascript']
let g:tagalong_filetypes = ['html', 'xml', 'jsx', 'eruby', 'ejs', 'eco', 'php', 'htmldjango', 'js']
"======================================================================================}}}

Plug 'echasnovski/mini.nvim'
"{{{======================================================================================
" modules
" -> mini.ai
" Extend and create a/i textobjects (like in di( or va").
"======================================================================================}}}

Plug 'machakann/vim-sandwich'
"{{{======================================================================================
" sandwich.vim is a set of operator and textobject plugins to add/delete/replace
" surroundings of a sandwiched textobject, like (foo), "bar".
"======================================================================================}}}
