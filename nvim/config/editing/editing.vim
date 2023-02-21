Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'numToStr/Comment.nvim'
"{{{======================================================================================
" gcc
"======================================================================================}}}

Plug 'cohama/lexima.vim'
"{{{======================================================================================
" autopairs
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

Plug 'tpope/vim-surround'
"{{{======================================================================================
" delete tags dst
"======================================================================================}}}

Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
"{{{======================================================================================
" or :call doge#install()
" wget https://phpdoc.org/phpDocumentor.phar
" chmod +x phpDocumentor.phar
" mv ./phpDocumentor.phar ./phpdoc
" mv ./phpdoc /usr/local/bin/phpdoc
" npm install -g jsdoc
"======================================================================================}}}

Plug 'AndrewRadev/tagalong.vim', { 'branch': 'main' }
"{{{======================================================================================
" The plugin is designed to automatically rename closing HTML/XML tags when editing
" opening ones (or the other way around).
let g:tagalong_mappings = ['c', 'C']
let g:tagalong_additional_filetypes = ['javascript']
let g:tagalong_filetypes = ['html', 'xml', 'jsx', 'eruby', 'ejs', 'eco', 'php', 'htmldjango', 'js']
"======================================================================================}}}

Plug 'AndrewRadev/switch.vim'
"{{{======================================================================================
let g:switch_mapping = "++"
autocmd FileType typescript let b:switch_custom_definitions =
      \ [
      \   {
      \     'const': 'let',
      \   }
      \ ]
"======================================================================================}}}

Plug 'isomoar/vim-css-to-inline'
"{{{======================================================================================
let g:csstoinline_no_mapping = 1
" tis - transform to inline styles
" fis - transform from inline styles to css
"======================================================================================}}}

Plug 'kkharji/sqlite.lua'
Plug 'AckslD/nvim-neoclip.lua'
"{{{======================================================================================
" Paste
"======================================================================================}}}
