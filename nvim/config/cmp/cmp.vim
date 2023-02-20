Plug 'neovim/nvim-lspconfig'
"{{{======================================================================================
" Collection of common configurations for Neovim's built-in language server client.
"======================================================================================}}}

" Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-path', {'branch': 'main'}
" Plug 'lukas-reineke/cmp-under-comparator'
Plug 'hrsh7th/cmp-buffer', {'branch': 'main'}
Plug 'hrsh7th/cmp-nvim-lsp', {'branch': 'main'}
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/nvim-cmp', {'branch': 'main'}
"{{{======================================================================================
"======================================================================================}}}

" Plug 'smjonas/snippet-converter.nvim'
" Plug 'honza/vim-snippets'
" I like auto-trigger
Plug 'dcampos/nvim-snippy'
Plug 'dcampos/cmp-snippy'
" imap <expr> <c-l> snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-advance)' : '<Tab>'
" imap <expr> <c-b> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
" smap <expr> <c-l> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'
" smap <expr> <c-b> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
" xmap <c-l> <Plug>(snippy-cut-text)
nmap <space>hs :e ~/.config/nvim/snippets/snippy/

" Plug 'L3MON4D3/LuaSnip'
" Plug 'rafamadriz/friendly-snippets'
