"{{{==============================================
" require hack, ranger, fzf, node, yarn
" cargo install bat ripgrep
" gem install neovim solargraph
" pip install --user neovim python-language-server
" yarn add global javascript-typescript-langserver
" font: hack
" completion: coc
" searcher: fzf
" debugger:
" file manager: ranger
" statusline: airline
" motion: easymotion, asterisk
"==============================================}}}

"{{{======================================================================================
Notes
"======================================================================================}}}
" instead of coc-git
" Plug 'f-person/git-blame.nvim'

" Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/completion-nvim'

" lua <<EOF
" local on_attach_vim = function(client)
"   require'completion'.on_attach(client)
" end
" require'nvim_lsp'.solargraph.setup{on_attach=on_attach_vim}
" require'nvim_lsp'.tsserver.setup{on_attach=on_attach_vim}
" require'nvim_lsp'.intelephense.setup{}
" EOF
" autocmd BufEnter * lua require'completion'.on_attach()
" " Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"
" " Set completeopt to have a better completion experience
" set completeopt=menuone,noinsert,noselect
"
" Avoid showing message extra message when using completion
" set shortmess+=c

"{{{======================================================================================
UI
"======================================================================================}}}
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'bignimbus/pop-punk.vim'
Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}
let g:daycula_transparent_background=1

nnoremap <F7> :Limelight!!<cr>
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }
"{{{======================================================================================
" Hyperfocus-writing in Vim.
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
"======================================================================================}}}

"{{{======================================================================================
BASE
"======================================================================================}}}

Plug 'vim-test/vim-test'
Plug 'benmills/vimux'
"{{{======================================================================================
" A Vim wrapper for running tests on different granularities.
let test#strategy = "vimux"
"======================================================================================}}}

" lua
Plug 'amirrezaask/fuzzy.nvim'
"{{{======================================================================================
"======================================================================================}}}

Plug 'dyng/ctrlsf.vim'
"{{{======================================================================================
"======================================================================================}}}


" Plug 'StanAngeloff/php.vim', { 'for': 'php' }
"{{{======================================================================================
let g:php_var_selector_is_identifier = 1
"======================================================================================}}}

nnoremap <space>hb :CocCommand explorer --sources=buffer+ --width=33<cr>
let g:coc_global_extensions = [
  \ 'coc-go', 'coc-lua', 'coc-python', 'coc-solargraph', 'coc-rls',
  \ 'coc-emmet', 'coc-html', 'coc-lit-html', 'coc-css', 'coc-cssmodules',
  \ 'coc-tslint', 'coc-tslint-plugin', 'coc-tsserver', 'coc-eslint', 'coc-docker',
  \ 'coc-prettier', 'coc-jest', 'coc-json', 'coc-yaml', 'coc-tailwindcss',
  \ 'coc-lists', 'coc-word', 'coc-translator', 'coc-github', 'coc-phpls',
  \ 'coc-post', 'coc-project', 'coc-pairs', 'coc-highlight', 'coc-snippets',
  \ 'coc-marketplace', 'coc-git', 'coc-markmap', 'coc-gitignore', 'coc-yank',
  \ 'coc-todolist', 'coc-pyright', 'coc-vetur', 'coc-elixir', 'coc-diagnostic',
  \ 'coc-emoji', 'coc-dictionary', 'coc-syntax', 'coc-restclient', 'coc-bookmark'
  \ ]
"explorer.file.autoReveal":false,
