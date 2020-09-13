Plug 'vim-scripts/loremipsum', { 'on': 'Loremipsum'}
"{{{======================================================================================
" :Loremipsum[!] [WORDCOUNT] [PARAGRAPH_TEMPLATE] [PREFIX POSTFIX]
" Insert some random text.
" :Loreplace [REPLACEMENT] [PREFIX] [POSTFIX]
" Replace the random text with something else or simply remove it.
"======================================================================================}}}

Plug 'AndrewRadev/tagalong.vim'
"{{{======================================================================================
" The plugin is designed to automatically rename closing HTML/XML tags when editing
" opening ones (or the other way around).
let g:tagalong_mappings = ['c', 'C']
let g:tagalong_additional_filetypes = ['javascript']
let g:tagalong_filetypes = ['html', 'xml', 'jsx', 'eruby', 'ejs', 'eco', 'php', 'htmldjango', 'js']
"======================================================================================}}}

Plug 'simnalamburt/vim-mundo', { 'on': 'MundoToggle' }
"{{{======================================================================================
"=======================================================================================}}}

Plug 'AndrewRadev/linediff.vim', { 'on': 'Linediff' }
"{{{======================================================================================
"======================================================================================}}}

Plug 'vim-scripts/tcd.vim', { 'on': 'Tcd' }
"{{{======================================================================================
"======================================================================================}}}
