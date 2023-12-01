nnoremap <space>pw :WorkspacesOpen<cr>
nnoremap <space>pR :lua require('spectre').open()<cr>

" nnoremap <space>pN :NeoTreeShowToggle<cr>
" " nnoremap <space>nt :NeoTreeFocusToggle<cr>
" nnoremap <space>pnrr :NeoTreeReveal<cr>
" nnoremap <space>pnrt :NeoTreeRevealToggle<cr>

nnoremap ej :NERDTreeToggle<cr>

nmap mm <Plug>BookmarkToggle
nmap ma :Telescope vim_bookmarks<cr>
nmap mn <Plug>BookmarkNext
nmap mp <Plug>BookmarkPrev
nmap mx :BookmarkClearAll<cr>
nmap mi :BookmarkAnnotate<cr>

nnoremap eh :GrappleToggle<cr>
nnoremap ee :GrapplePopup tags<cr>

nnoremap rr :FzfLua live_grep<cr>
