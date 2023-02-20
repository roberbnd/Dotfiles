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
