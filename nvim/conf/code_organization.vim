Plug 'foosoft/vim-argwrap', { 'on': 'ArgWrap' }
"vim-argwrap{{{===========================================================================
" It can be used for collapsing and expanding from function calls to array and dictionary
" definitions.:ArgWrap
"======================================================================================}}}

Plug 'AndrewRadev/splitjoin.vim'
Plug 'flwyd/vim-conjoin'
"splitjoin{{{=============================================================================
" switching between a single-line statement and a multi-line one.
" gS to split a one-liner into multiple lines
" gJ (with the cursor on the first line of a block)
"======================================================================================}}}

Plug 'AndrewRadev/sideways.vim'
"sideways{{{==============================================================================
" :SidewaysLeft <<, :SidewaysRight >>,  exchange args
"======================================================================================}}}

Plug 'godlygeek/tabular', { 'on': 'Tabularize' }
"tabular{{{===============================================================================
" :Tabularize /{pattern}
"======================================================================================}}}

Plug 'tommcdo/vim-exchange'
"vim-exchange{{{==========================================================================
" To exchange two words, place your cursor on the first word and type cxiw. Then move
" to the second word and type cxiw again. Note: the {motion} used in the first
" and second use of cx don't have to be the same.
" nmap cx <Plug>(Exchange)
" vmap X <Plug>(Exchange)
" nmap cxc <Plug>(ExchangeClear)
" nmap cxx <Plug>(ExchangeLine)
"======================================================================================}}}

Plug 'rstacruz/vim-xtract', { 'on': 'Xtract'}
"vim-xtract{{{============================================================================
" vim-xtract helps you split up large files into smaller files. Great for refactoring.
"======================================================================================}}}

Plug 'wellle/visual-split.vim', { 'on': 'VSSplit'}
"visual-split{{{==========================================================================
" 1.Visually select the lines you want to split out
" 2.Type :VSSplit, :VSSplitAbove or :VSSplitBelow to create the split
" 3.A new split will be created showing the selected lines
" <C-W>gr - resize split to visual selection (similar to :VSResize)
" <C-W>gss - split out visual selection (similar to :VSSplit)
" <C-W>gsa - split out visual selection above (similar to :VSSplitAbove)
" <C-W>gsb - split out visual selection below (similar to :VSSplitBelow)
"======================================================================================}}}

Plug 'da-x/name-assign.vim'
"{{{======================================================================================
" provides a Vim plugin to automate replacing expressions with assigned variables
" in multiple programming language.
" vmap <leader>b <Plug>NameAssign
"======================================================================================}}}
