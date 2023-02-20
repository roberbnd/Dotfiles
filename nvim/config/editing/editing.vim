Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'numToStr/Comment.nvim'
" Plug 'tpope/vim-commentary'
"{{{======================================================================================
" gcc
"======================================================================================}}}

" Plug 'windwp/nvim-autopairs'
Plug 'cohama/lexima.vim'
"{{{======================================================================================
" autopairs
"======================================================================================}}}

Plug 'tpope/vim-surround'
"{{{======================================================================================
" delete tags dst
"======================================================================================}}}
Plug 'machakann/vim-sandwich'
"{{{======================================================================================
" sandwich.vim is a set of operator and textobject plugins to add/delete/replace
" surroundings of a sandwiched textobject, like (foo), "bar".
"======================================================================================}}}

Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
" Plug 'kkoomen/vim-doge', { 'tag': 'v3.17.0' }
"{{{======================================================================================
" or :call doge#install()
" wget https://phpdoc.org/phpDocumentor.phar
" chmod +x phpDocumentor.phar
" mv ./phpDocumentor.phar ./phpdoc
" mv ./phpdoc /usr/local/bin/phpdoc
" npm install -g jsdoc
"======================================================================================}}}

Plug 'p0deje/vim-ruby-interpolation', { 'for': 'ruby' }
"{{{======================================================================================
" Simple Vim plugin for Ruby which automatically adds {} when you type # inside string.
"======================================================================================}}}

Plug 'AndrewRadev/tagalong.vim', { 'branch': 'main' }
"{{{======================================================================================
" The plugin is designed to automatically rename closing HTML/XML tags when editing
" opening ones (or the other way around).
let g:tagalong_mappings = ['c', 'C']
let g:tagalong_additional_filetypes = ['javascript']
let g:tagalong_filetypes = ['html', 'xml', 'jsx', 'eruby', 'ejs', 'eco', 'php', 'htmldjango', 'js']
"======================================================================================}}}

Plug 'mattn/emmet-vim'
"{{{======================================================================================
let g:user_emmet_leader_key='<c-z>'
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

" Plug 'dcampos/nvim-snippy'
" https://github.com/bluz71/dotfiles/blob/master/nvim/lua/config/snippy.lua
" local snippy = require("snippy")
" local map = vim.keymap.set

" snippy.setup({
"   mappings = {
"     i = {
"       ["<C-j>"] = "expand_or_advance",
"       ["<C-k>"] = "previous",
"     },
"   },
" })

" -- Insert mode snippy completion mapping - '<Control-s>'
" map("i", "<C-s>", function()
"   require('snippy').complete()
" end, { silent = true })



Plug 'kkharji/sqlite.lua'
Plug 'AckslD/nvim-neoclip.lua'
"{{{======================================================================================
" Paste
"======================================================================================}}}

Plug 'ThePrimeagen/refactoring.nvim'

" Plug 'chrisgrieser/nvim-recorder'
" https://www.reddit.com/r/neovim/comments/1085spm/introducing_nvimrecorder_a_plugin_to_enhance_your/

Plug 'echasnovski/mini.nvim'
