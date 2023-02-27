"Align {{{====================================
map <space>au =ae``
nnoremap <space>ag =G
nnoremap <space>a{ =i{``
nnoremap <space>a( =i(``
nnoremap <space>a[ =i[``
nnoremap <space>at =it

vnoremap <tab> >gv
vnoremap <s-tab> <gv
nnoremap <space>ae :Tabularize /
vnoremap <space>ae :Tabularize /
nnoremap <space>a= :Tabularize /=<cr>
vnoremap <space>a= :Tabularize /=<cr>
nnoremap <space>a: :Tabularize /:\zs<cr>
vnoremap <space>a: :Tabularize /:\zs<cr>
"}}}==========================================


"Rust {{{=====================================
au BufEnter *.rs nmap gd <Plug>(rust-def)
au BufEnter *.rs nmap gs <Plug>(rust-def-split)
au BufEnter *.rs nmap gx <Plug>(rust-def-vertical)
au BufEnter *.rs nmap <space>gd <Plug>(rust-doc)
"}}}==========================================

"Go {{{=======================================
au BufEnter *.go nmap \r <Plug>(go-run)
au BufEnter *.go nmap \b <Plug>(go-build)
au BufEnter *.go nmap \t <Plug>(go-test)
au BufEnter *.go nmap \c <Plug>(go-coverage)
au BufEnter *.go nmap \gb <Plug>(go-doc-browser)
"}}}==========================================

" Resize split
"splits {{{===================================
"============================================
" vertically
" nnoremap s> :vertical resize +15<cr>
" nnoremap s< :vertical resize -15<cr>
" maximum width
" nnoremap sq <c-w><bar>
" Horizontally
" nnoremap s{ :5winc +<cr>
" nnoremap s} :5winc -<cr>
" " maximum height
" nnoremap sb <c-w>_
"}}}==========================================

nnoremap <space>h<down> :Hi+<cr>
nnoremap <space>h<up> :Hi-<cr>
nnoremap <space>h<left> :Hi<<cr>
nnoremap <space>h<right> :Hi><cr>

"commands {{{================================
" Allow saving of files as sudo
cnoremap w!! w !sudo tee > /dev/null %
"============================================

" nnoremap }ttv :lua require('telescope').extensions.git_worktree.git_worktrees()<cr>
" nnoremap }ttc :lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>

"vim-textobj-punctuation{{{===================
xmap u iu
omap u iu
"}}}==========================================

"lua vim.keymap.set('n', '>>', require('sibling-swap').swap_with_right)
"lua vim.keymap.set('n', '<<', require('sibling-swap').swap_with_left)

"vim css {{{==================================
"isomoar/vim-css-to-inline
"Transforms plain css to JSX inline styles and vise versa
nmap <leader>is <Plug>ToInlineN
xmap <leader>is <Plug>ToInlineV
nmap <leader>cs <Plug>FromInlineN
xmap <leader>cs <Plug>FromInlineV
"}}}==========================================

nnoremap <space>? :lua print(require("nvim-gps").get_location())<cr>

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

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
"Add {{{======================================
vmap [ sa[
vmap { sa{
vmap ( sa(
vmap ' sa'
vmap " sa"
vmap <space><space> sa<space>
vmap ` sa`
vmap t sat
"}}}==========================================

nnoremap <space>pr :Rg<cr>
" omit the path file as string to search
nnoremap rr :Rg2<cr>
command! -bang -nargs=* Rg2 call fzf#vim#grep(
            \ "rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>),
            \ 1, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}),
            \ <bang>0 )
