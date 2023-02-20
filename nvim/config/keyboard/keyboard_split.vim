"splits {{{===================================
" close
nnoremap sc <c-w>c
nnoremap so :only<cr>
" nmap <space>sc scru<cr>
" close tab return to the buffer
" split vertically"
nnoremap s+ <c-w>v
" equal wide"
nnoremap s= <c-w>=
" split horizontally"
nnoremap s- <c-w>s
" go right"
nnoremap ss <c-w>l0
" nnoremap ss :TmuxNavigateRight<cr>
nnoremap sn <c-w>l
" go up"
nnoremap st <c-w>k
" nnoremap st :TmuxNavigateUp<cr>
" go down"
nnoremap sn <c-w>j
" nnoremap sn :TmuxNavigateDown<cr>
" go left
nnoremap sh <c-w>h0
" nnoremap sh :TmuxNavigateLeft<cr>

" changes vertically to horizontally
nnoremap sk <c-w>K
" changes horizontally to vertically
nnoremap sj <c-w>H
" swap splits"
nnoremap sw <c-w>R
" go file under cursor"
nnoremap sf <c-w>f
" move file split to tab
nnoremap sT <c-w>T
nnoremap <space>sm :lua require('maximize').toggle()<cr>
nnoremap <space>sr :WinResizerStartResize<cr>
nnoremap <space>sl :call LongScroll()<cr>
vnoremap <space>S :VSSplit<cr>
"center adding border
nnoremap <space>sc :NoNeckPain<cr>
