Plug 'ziontee113/syntax-tree-surfer'
"{{{======================================================================================
"======================================================================================}}}

Plug 'kevinhwang91/promise-async'
Plug 'Weissle/easy-action'

"select the node threesitter (keyboard: em, visual:m)
Plug 'mfussenegger/nvim-treehopper'
Plug 'phaazon/hop.nvim'
"hop{{{=======================================
nnoremap w <cmd>HopLine<cr>
vnoremap w <cmd>HopLine<cr>
nnoremap W <cmd>HopLine<cr>
nnoremap ew V<cmd>HopLine<cr>

inoremap jm <esc><cmd>HopChar2<cr>
inoremap jm <esc><Plug>(easymotion-overwin-f)
inoremap jb <esc><cmd>HopLine<cr>

nnoremap <silent> em :lua require'tsht'.nodes()<cr>
vnoremap <silent> m :lua require'tsht'.nodes()<cr>
"==========================================}}}
