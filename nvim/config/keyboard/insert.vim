inoremap <c-b>+ <right><space>+<space>
inoremap <c-b>= <right><space>=<space>
inoremap <c-b>> <right><space>=><space>
inoremap <c-b>{ <right>,<space>{}<left>
inoremap <c-b>[ <right>,<space>[]<left>
inoremap <c-b>' <right>,<space>''<left>
inoremap <c-b>" <right>,<space>""<left>
inoremap <c-b>- <right>,<space>
inoremap <c-b>. <right><space>
inoremap <c-b>; <right>:<space>
inoremap <c-b>: <right>:<cr>
inoremap <c-b><space> <right><space>
inoremap <c-b>h <space>=<space>
inoremap <c-b>t <space>==<space>
inoremap <c-b>n <space>!==<space>
inoremap <c-b>s <space>=<space>[]<left>
inoremap <c-b>c <space>-><space>
inoremap <c-b>r <space>=><space>
inoremap <c-b>b <space><space><left>
inoremap <c-b><c-b> <esc>A
imap <c-b><cr> <esc>A<space>{<cr>

nnoremap <c-l>, A,<esc>
inoremap <c-l>, <esc>A,<esc>
nnoremap <c-l>c A,<cr>
inoremap <c-l>c <esc>A,<cr>

nnoremap <c-l>; A;<esc>
inoremap <c-l>; <esc>A;<esc>
nnoremap <c-l>r A;<cr>
inoremap <c-l>r <esc>A;<cr>

"Switching line {{{===========================
nnoremap <c-down> :m .+1<cr>==
inoremap <c-down> <ESC>:m .+1<cr>==gi
vnoremap <c-down> :m '>+1<cr>gv=gv
nnoremap <c-up> :m .-2<cr>==
inoremap <c-up> <ESC>:m .-2<cr>==gi
vnoremap <c-up> :m '<-2<cr>gv=gv
"}}}==========================================

inoremap <c-left> <esc>O
inoremap <c-right> <esc>o

" from: {}
" to: {
"
" }
inoremap qh <cr><esc>O
nnoremap qh i<cr><esc>O<esc>cc

inoremap qt <esc>o<cr>
nnoremap qt o<cr>

nnoremap qr yyp

inoremap qs <esc>:w<cr>
nnoremap qs :update<cr>
nnoremap qS :w!<cr>
vnoremap qs <esc>:w<cr>

vmap C *cgn
nmap <space>* *cgn
