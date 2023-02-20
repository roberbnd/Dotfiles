" https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}

Plug 'DNLHC/glance.nvim'

Plug 'j-hui/fidget.nvim'
"{{{======================================================================================
" Standalone UI for nvim-lsp progress.
"======================================================================================}}}

" Plug 'simrat39/symbols-outline.nvim'
" Plug 'stevearc/aerial.nvim'

Plug 'b0o/SchemaStore.nvim'

Plug 'ray-x/lsp_signature.nvim'
" Plug 'Issafalcon/lsp-overloads.nvim'
"{{{======================================================================================
" Extends the built-in Neovim LSP signature helper handler to add additional functionality,
" focussing on enhancements for method overloads.
"======================================================================================}}}

" Plug 'liuchengxu/vista.vim'
""{{{======================================================================================
"" require ctags, ptags
"" Viewer & Finder for LSP symbols and tags in Vim
"" use ptags generate the tags file
"let g:vista_fzf_preview = ['right:65%']
"let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
"let g:vista#renderer#enable_icon = 1
let g:vista_default_executive = 'nvim_lsp'
let g:vista_fzf_preview = ['right:50%']
"" let g:vista_default_executive = 'coc'
"" let g:vista_executive_for = {
""   \ 'lua': 'nvim_lsp',
""   \ 'proto': 'coc',
""   \ 'vim': 'coc'
""   \ }
"" let g:vista_sidebar_position = 'vertical topleft'
"let g:vista_sidebar_width='35'
"let g:vista_blink = [0, 0]

"" function! NearestMethodOrFunction() abort
""   return get(b:, 'vista_nearest_method_or_function', '')
"" endfunction
"" set statusline+=%{NearestMethodOrFunction()}
"" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
""======================================================================================}}}
