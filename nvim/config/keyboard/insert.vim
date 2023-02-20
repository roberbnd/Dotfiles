inoremap <c-l>+ <right><space>+<space>
inoremap <c-l>= <right><space>=<space>
inoremap <c-l>> <right><space>=><space>
inoremap <c-l>{ <right>,<space>{}<left>
inoremap <c-l>[ <right>,<space>[]<left>
inoremap <c-l>' <right>,<space>''<left>
inoremap <c-l>" <right>,<space>""<left>
inoremap <c-l>- <right>,<space>
inoremap <c-l>. <right><space>
inoremap <c-l>; <right>:<space>
inoremap <c-l>: <right>:<cr>
inoremap <c-b>h <space>=<space>
inoremap <c-b>t <space>==<space>
inoremap <c-b>n <space>!==<space>
inoremap <c-b>s <space>=<space>[]<left>
inoremap <c-b>c <space>-><space>
inoremap <c-b>r <space>=><space>
inoremap <c-b>b <space><space><left>
inoremap <c-l>s <esc>A
inoremap <c-b><space> <right><space>

inoremap jj <esc>
"Switching line {{{===========================
nnoremap <c-r> :m .+1<cr>==
inoremap <c-r> <ESC>:m .+1<cr>==gi
vnoremap <c-r> :m '>+1<cr>gv=gv
nnoremap <c-c> :m .-2<cr>==
inoremap <c-c> <ESC>:m .-2<cr>==gi
vnoremap <c-c> :m '<-2<cr>gv=gv
"}}}==========================================

inoremap jh <esc>O
inoremap jt <esc>o

" from: {}
" to: {
"
" }
inoremap qh <cr><esc>O
nnoremap qh i<cr><esc>O<esc>cc

" jump one line and insert mode
inoremap qt <esc>o<cr>
nnoremap qt o<cr>

nnoremap qr yyp

inoremap qs <esc>:w<cr>
nnoremap qs :update<cr>
nnoremap qS :w!<cr>
vnoremap qs <esc>:w<cr>

nnoremap <c-b>c A,<esc>
inoremap <c-b>c <esc>A,<esc>
nnoremap <m-b>c A,<cr>
inoremap <m-b>c <esc>A,<cr>

nnoremap <c-b>r A;<esc>
inoremap <c-b>r <esc>A;<esc>
nnoremap <m-b>r A;<cr>
inoremap <m-b>r <esc>A;<cr>
