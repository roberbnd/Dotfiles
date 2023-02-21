Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
" Plug 'nvim-treesitter/nvim-treesitter-textobjects'

" Plug 'joechrisellis/lsp-format-modifications.nvim'
" Plug 'jay-babu/mason-null-ls.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
"{{{======================================================================================
"Format and linitng
"======================================================================================}}}

Plug 'ziontee113/syntax-tree-surfer'
"{{{======================================================================================
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

Plug 'whatyouhide/vim-textobj-xmlattr', { 'for': ['javascript', 'html', 'eruby'] }
"{{{======================================================================================
" This vim plugin provides two text objects: ax and ix.
" They represent XML/HTML attributes.
" It's based on (and requires) vim-textobj-user.
"======================================================================================}}}
