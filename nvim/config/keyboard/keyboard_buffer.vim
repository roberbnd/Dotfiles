nnoremap cj :Bclose<cr>
nnoremap ck :Bclose!<cr>
nnoremap <space>bd :Bdelete menu<cr>
" nnoremap <space>bp <c-^>
" nnoremap <space>bp :b#<cr>
nnoremap rh :b#<cr>

" buffer search
" I can paste to search and showed it in the tab opened
" nnoremap ra :Buffers<cr>
" jump buffer in same tab without jump
nnoremap b :FzfLua buffers<cr>

" copy line number
nmap yl :let @+ = line('.')<cr>
" copy name
nmap yn :let @+ = expand('%:t')<cr>
" copy relative path
nmap yr :let @+ = expand('%')<cr>
" copy full path
nmap yf :let @+ = expand('%:p')<cr>

" buffer full path
nnoremap <space>bn :echo expand('%')<cr>
" nnoremap ru :BLines<cr>
nnoremap <space>bl :FzfLua blines<cr>
" nnoremap ri :Lines<cr>
nnoremap <space>bL :FzfLua lines<cr>
nnoremap <space>bm :MaximizerToggle<cr>

nnoremap <space>bs :StripWhitespaceOnChangedLines<cr>

nnoremap <space>bh :nohlsearch<cr>
