" Plug 'simrat39/symbols-outline.nvim'
" Plug 'stevearc/aerial.nvim'
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
Plug 'DNLHC/glance.nvim'
