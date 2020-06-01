Plug 'vim-scripts/loremipsum', { 'on': 'Loremipsum'}
"{{{======================================================================================
" :Loremipsum[!] [WORDCOUNT] [PARAGRAPH_TEMPLATE] [PREFIX POSTFIX]
" Insert some random text.
" :Loreplace [REPLACEMENT] [PREFIX] [POSTFIX]
" Replace the random text with something else or simply remove it.
"======================================================================================}}}

Plug 'segeljakt/vim-silicon'
"{{{======================================================================================
" require cargo install silicon bat
" This plugin provides a command which, given a visual selection or buffer, will generate a
" neat looking and highly customizable image of the source code.
let g:silicon = {
      \   'theme':              'Dracula',
      \   'font':                  'Hack',
      \   'background':         '#fff0',
      \   'shadow-color':       '#555555',
      \   'line-pad':                   2,
      \   'pad-horiz':                 80,
      \   'pad-vert':                 100,
      \   'shadow-blur-radius':         0,
      \   'shadow-offset-x':            0,
      \   'shadow-offset-y':            0,
      \   'line-number':           v:true,
      \   'round-corner':          v:true,
      \   'window-controls':       v:true,
      \ }
"======================================================================================}}}

Plug 'kkoomen/vim-doge', { 'on': 'DogeGenerate'}
"{{{======================================================================================
" DoGe is a (Do)cumentation (Ge)nerator which will generate a proper documentation skeleton
" based on certain expressions (mainly functions)
let g:doge_enable_mappings = 0
"======================================================================================}}}

Plug 'kristijanhusak/vim-dadbod-ui'
"{{{======================================================================================
" Simple UI for vim-dadbod. It allows simple navigation through databases and allows
" saving queries for later use.
"======================================================================================}}}

Plug 'AndrewRadev/tagalong.vim'
"{{{======================================================================================
" The plugin is designed to automatically rename closing HTML/XML tags when editing
" opening ones (or the other way around).
let g:tagalong_mappings = ['c', 'C']
let g:tagalong_additional_filetypes = ['javascript']
let g:tagalong_filetypes = ['html', 'xml', 'jsx', 'eruby', 'ejs', 'eco', 'php', 'htmldjango', 'js']
"======================================================================================}}}

Plug 'mbbill/undotree'
"{{{======================================================================================
"= =====================================================================================}}}

" Plug 'luochen1990/rainbow'
"{{{======================================================================================
let g:rainbow_active = 1
"======================================================================================}}}

Plug 'da-x/name-assign.vim'
"{{{======================================================================================
"======================================================================================}}}
