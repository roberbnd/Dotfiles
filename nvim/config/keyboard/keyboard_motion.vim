nnoremap ' ``
"back cursor
nnoremap <left> <c-o>
"forward cursor
nnoremap <right> <c-i>
nnoremap <up> <c-b>
nnoremap <down> <c-f>

"easymotion{{{================================
nmap / <Plug>(easymotion-sn)
nmap t <Plug>(easymotion-overwin-f)

nmap w <Plug>(easymotion-overwin-line)
vmap w <Plug>(easymotion-bd-jk)
nmap ew Vw

imap jm <esc>t
imap jb <esc>w

imap jf <esc>f
imap jj <esc>

nmap ec v<Plug>(easymotion-linebackward)
vmap ec <Plug>(easymotion-linebackward)
nmap er v<Plug>(easymotion-lineforward)
vmap er <Plug>(easymotion-lineforward)
"==========================================}}}

"asterisk{{===================================
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)
"}}}==========================================
