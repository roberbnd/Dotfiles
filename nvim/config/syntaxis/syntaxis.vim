Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'jose-elias-alvarez/null-ls.nvim'
"{{{======================================================================================
"Format and linitng
"======================================================================================}}}

Plug 'fantasyczl/blade-php-vim'
"{{{======================================================================================
"======================================================================================}}}

Plug 'nelsyeung/twig.vim', { 'for': 'twig' }
"{{{======================================================================================
"======================================================================================}}}

Plug 'laytan/tailwind-sorter.nvim'
"{{{======================================================================================
"======================================================================================}}}

Plug 'someone-stole-my-name/yaml-companion.nvim'

" Plug 'atusy/tsnode-marker.nvim'
" Plug 'lukas-reineke/headlines.nvim'
" Plug 'preservim/vim-markdown'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
"{{{======================================================================================
let g:vim_markdown_fenced_languages = ['csharp=cs', 'javascript=js']
"======================================================================================}}}

Plug 'iftheshoefritz/solargraph-rails'
Plug 'p0deje/vim-ruby-interpolation', { 'for': 'ruby' }
"{{{======================================================================================
" Simple Vim plugin for Ruby which automatically adds {} when you type # inside string.
"======================================================================================}}}

Plug 'windwp/nvim-ts-autotag'

Plug 'cameron-wags/rainbow_csv.nvim'
