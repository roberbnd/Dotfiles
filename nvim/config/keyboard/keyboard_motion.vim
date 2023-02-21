nnoremap ' ``
"back cursor
nnoremap <left> <c-o>
"forward cursor
nnoremap <right> <c-i>
nnoremap <up> <c-b>
nnoremap <down> <c-f>

"easymotion{{{================================
nmap / <Plug>(easymotion-sn)
nmap t <Plug>(easymotion-overwin-f2)
"neotree
nmap gt <Plug>(easymotion-overwin-f2)

nmap ec v<Plug>(easymotion-linebackward)
vmap ec <Plug>(easymotion-linebackward)
nmap er v<Plug>(easymotion-lineforward)
vmap er <Plug>(easymotion-lineforward)
"==========================================}}}

"hop{{{=======================================
nnoremap w <cmd>HopLine<cr>
vnoremap w <cmd>HopLine<cr>
noremap <space>l <cmd>HopLine<cr>
nnoremap ew V<cmd>HopLine<cr>

inoremap jmm <esc><cmd>HopChar2<cr>
inoremap jmb <esc><cmd>HopLine<cr>
nnoremap <silent> em :lua require'tsht'.nodes()<cr>
vnoremap <silent> m :lua require'tsht'.nodes()<cr>
"==========================================}}}

"asterisk{{===================================
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)
"}}}==========================================
