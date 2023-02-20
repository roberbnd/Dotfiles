"Add {{{======================================
vmap [ sa[
vmap { sa{
vmap ( sa(
vmap ' sa'
vmap " sa"
vmap <space><space> sa<space>
vmap ` sa`
vmap t sat

nnoremap <space>, A,<esc>
inoremap <c-l>, <esc>A,<esc>
inoremap <c-l><cr> <esc>A,<cr>

nnoremap <space>; A;<esc>
inoremap <c-l>; <esc>A;<esc>
inoremap <c-l><cr> <esc>A;<cr>
"}}}==========================================

"Delete {{{===================================
nmap d[ sd[
nmap d{ sd{
nmap d( sd(
nmap d' sd'
nmap d` sd`
nmap dq sd"
nmap d< sd<
nmap d<space> sd<space>
nmap d; dt;
nmap d, dt,
nmap d) dt)
nmap d<space> dt<space>
nnoremap dp dap
"}}}==========================================

"change until {{{=============================
nnoremap -' ct'
nnoremap -= ct=
nnoremap -_ ct_
nnoremap -. ct.
nnoremap -, ct,
nnoremap -<space> ct<space>
nnoremap -q ct"
nnoremap -> ct>
nnoremap -< ct<
nnoremap -; ct;
nnoremap -: ct:
nnoremap -) ct)
nnoremap -( ct(
nnoremap -{ ct{
nnoremap -} ct}
nnoremap -[ ct[
nnoremap -] ct]
nnoremap -- ct-
nnoremap -$ ct$
nnoremap -/ ct/
nnoremap -<bar> ct<bar>
"}}}==========================================

"Change surround {{{==========================
nmap c{ sr{
nmap c( sr(
nmap c' sr'"
nmap c` sr`
nmap cq sr"'
nmap c" sr"'
nmap c[ sr[
nmap c; ct;
nmap c, ct,
nmap c<space> cf<space>
"}}}==========================================

"Modify {{{===================================
nnoremap m' ci'
nnoremap mq ci"
nnoremap m{ ci{
nnoremap m( ci(
nnoremap m[ ci[
nnoremap m; ct;
nnoremap m<space> ct<space>
nnoremap m< ci<
"}}}==========================================

"Yank {{{=====================================
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
"}}}==========================================
