nnoremap <space>fD :Delete!<cr>
nnoremap <space>fv :FloatermNew vifm<cr>
nnoremap rj :FloatermNew ranger<cr>
" nnoremap <space>fR :FloatermNew ranger .<cr>
nnoremap rJ :FloatermNew ranger .<cr>
nnoremap <space>ffR :let @" = expand("%:t")<cr>:Rename<space><c-r>"

nnoremap rc gf
" nnoremap rC :e <cfile><cr>
noremap rC :call CreateFile(expand("<cfile>"))<CR>
nnoremap <space>rc <c-w>gf
" Rename file
" nnoremap gR :let @" = expand("%:t")<cr>:GMove<space><c-r>"

nnoremap <space>ff :Files<cr>
" nnoremap re :FzfLua files<cr>


" nnoremap <space><space>j :NvimTreeToggle<cr>
" nnoremap <space><space>J :NvimTreeFindFile<cr>
nnoremap <space><space>j :NeoTreeShowToggle<cr>
nnoremap <space><space>J :NeoTreeFocusToggle<cr>
