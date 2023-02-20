" nnoremap sp :tabnew<cr>
nnoremap <space>wn :tabnew<cr>
" nnoremap s, :tabmove -1<cr>
nnoremap <space>wj :tabmove -1<cr>
" nnoremap s. :tabmove +1<cr>
nnoremap <space>wk :tabmove +1<cr>
" nnoremap s; :tabclose<cr>
nnoremap <space>wc :tabclose<cr>

" nnoremap se :tabfirst<cr>
nnoremap <space>w<left> :tabfirst<cr>
" nnoremap su :tablast<cr>
nnoremap <space>w<right> :tablast<cr>
" close all the tabs to the right
" nmap sC <cmd>.+1,$tabdo :q<cr>
nnoremap <space>wC <cmd>.+1,$tabdo :q<cr>

" nmap <space>w :tabprevious<cr>
" nmap <space>n :tabnext<cr>
" nmap <space>w<left> :tabprevious<cr>
" nmap <space>w<right> :tabnext<cr>
nmap B :tabprevious<cr>
nmap M :tabnext<cr>
" vmap H <esc>:HSRmHighlight<cr>
" nmap R v<esc>:HSRmHighlight<cr>

nnoremap <silent> ch :exe "tabn ".g:lasttab<cr>
" nnoremap <silent> <space>wl :exe "tabn ".g:lasttab<cr>

nnoremap rw :Windows<cr>
" nnoremap rw :FzfLua tabs<cr>
" nnoremap <space>we :Windows<cr>
