nnoremap ' ``
"back cursor
nnoremap <space>o <c-o>
nnoremap <left> <c-o>
"forward cursor
nnoremap <space>e <c-i>
nnoremap <right> <c-i>
" nnoremap <s-tab> <c-b>
" nnoremap <tab> <c-f>
nnoremap <up> <c-b>
nnoremap <down> <c-f>
" vnoremap <s-tab> <c-b>
" vnoremap <tab> <c-f>

"easymotion{{{================================
" map eh <Plug>(easymotion-k)
" map es <Plug>(easymotion-j)
" imap jmh <esc><Plug>(easymotion-k)
" imap jmt <esc><Plug>(easymotion-linebackward)
" imap jmn <esc><Plug>(easymotion-lineforward)
" imap jms <esc><Plug>(easymotion-j)

nmap / <Plug>(easymotion-sn)
" imap jmm <esc><Plug>(easymotion-sn)

" vmap t <Plug>(easymotion-s2)
" nmap T v<Plug>(easymotion-s2)
nmap t <Plug>(easymotion-overwin-f2)
"neotree
nmap gt <Plug>(easymotion-overwin-f2)
" nmap t :HopChar2<cr>

" imap jmj <esc><Plug>(easymotion-overwin-f2)

" nmap eg V<Plug>(easymotion-k)
nmap ec v<Plug>(easymotion-linebackward)
vmap ec <Plug>(easymotion-linebackward)
nmap er v<Plug>(easymotion-lineforward)
vmap er <Plug>(easymotion-lineforward)
" nmap el V<Plug>(easymotion-j)
" imap jmg <esc>V<Plug>(easymotion-j)
" imap jmc <esc>v<Plug>(easymotion-linebackward)
" imap jmr <esc>v<Plug>(easymotion-lineforward)
" imap jml <esc>V<Plug>(easymotion-j)
"==========================================}}}

"hop{{{=======================================
" nnoremap w <cmd>HopLine<cr>
" vnoremap w <cmd>HopLine<cr>
nnoremap w <cmd>HopLine<cr>
vnoremap w <cmd>HopLine<cr>
noremap <space>l <cmd>HopLine<cr>
nnoremap ew V<cmd>HopLine<cr>
" map et :HopChar1CurrentLine<cr>

" nnoremap et :HopChar1CurrentLine<cr>
" nnoremap t :HopChar2<cr>
" inoremap jmj <esc>:HopChar2<cr>
" nnoremap t :HopChar1<cr>

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
