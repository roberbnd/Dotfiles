nnoremap <space>y :BasicEasyAction<cr>
" copy line
nnoremap <space>cl "+yy
nnoremap y' "+yi'
nnoremap yq yi"
nnoremap y{ yi{
nnoremap y( yi(
nnoremap y[ yi[
nnoremap yp yap
nnoremap <space>' "+yi'
noremap <space>q "+yi"
vnoremap , "+y
" copy workspace
nmap yw :let @+ = 'cd ' . getcwd()<cr>
" copy test info relative path
nmap yt :let @+ = expand('%') . ":" . line('.')<cr>
" copy test info full path
nmap yT :let @+ = expand('%:p') . ":" . line('.')<cr>

" copy current line number
nmap yl :let @+ = line('.')<cr>
" copy name buffer
nmap yn :let @+ = expand('%:t')<cr>
" copy relative path buffer
nmap yr :let @+ = expand('%')<cr>
" copy full path buffer
nmap yf :let @+ = expand('%:p')<cr>

"Paste ======================================
nnoremap <space>+ /<c-r>+<cr>
nnoremap P :lua require('neoclip.fzf')()<cr>

vnoremap r y:%s/<c-r>"/
vnoremap / y/<c-r>"<cr>
