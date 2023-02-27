Plug 'foosoft/vim-argwrap', { 'on': 'ArgWrap' }
"vim-argwrap{{{===========================================================================
" It can be used for collapsing and expanding from function calls to array and dictionary
" definitions.:ArgWrap
"======================================================================================}}}

Plug 'ThePrimeagen/refactoring.nvim'

Plug 'rstacruz/vim-xtract', { 'on': 'Xtract'}
"vim-xtract{{{============================================================================
" vim-xtract helps you split up large files into smaller files. Great for refactoring.
"======================================================================================}}}


Plug 'bennypowers/splitjoin.nvim'
Plug 'AndrewRadev/splitjoin.vim', { 'branch': 'main' }
"splitjoin{{{=============================================================================
" switching between a single-line statement and a multi-line one.
" gS to split a one-liner into multiple lines
" gJ (with the cursor on the first line of a block)
"======================================================================================}}}

Plug 'mizlan/iswap.nvim'
"{{{======================================================================================
"======================================================================================}}}

Plug 'Wansmer/sibling-swap.nvim'
"tabular{{{===============================================================================
" requires nvim-treesitter
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

Plug 'chrisbra/NrrwRgn'
"{{{======================================================================================
"" This plugin is inspired by the Narrowing feature
" of Emacs and means to focus on a selected region
" while making the rest inaccessible. You simply
"   select the region, call :NR and the selected
"   part will open in a new split window while the
"   rest of the buffer will be protected. Once you are
"   finished, simply write the narrowed window (:w)
"   and all the changes will be moved back to the original buffer.
" Ex commands:
" :NR      - Open the selected region in a new narrowed window
" :NW      - Open the current visual window in a new narrowed window
" :WidenRegion - (In the narrowed window) write the changes back to the original buffer.
" :NRV     - Open the narrowed window for the region that was last visually selected.
" :NUD     - (In a unified diff) open the selected diff in 2 Narrowed windows
" :NRP     - Mark a region for a Multi narrowed window
" :NRM     - Create a new Multi narrowed window (after :NRP)
" :NRS     - Enable Syncing the buffer content back (default on)
" :NRN     - Disable Syncing the buffer content back
" :NRL     - Reselect the last selected region and open it again in a narrowed window
let g:nrrw_rgn_nomap_nr = 1
let g:nrrw_rgn_nomap_Nr = 1
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
