" Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'numToStr/Comment.nvim'
"{{{======================================================================================
" gcc
"======================================================================================}}}

Plug 'cohama/lexima.vim'
"{{{======================================================================================
" autopairs
"======================================================================================}}}

Plug 'kylechui/nvim-surround'

" Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
"{{{======================================================================================
" or :call doge#install()
" wget https://phpdoc.org/phpDocumentor.phar
" chmod +x phpDocumentor.phar
" mv ./phpDocumentor.phar ./phpdoc
" mv ./phpdoc /usr/local/bin/phpdoc
" npm install -g jsdoc
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
