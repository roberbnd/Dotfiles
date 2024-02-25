nnoremap <space>pw :WorkspacesOpen<cr>
nnoremap <space>pR :lua require('spectre').open()<cr>

nnoremap eh :GrappleToggle<cr>
nnoremap ee :GrapplePopup tags<cr>

nnoremap ej :NeoTreeFocusToggle<cr>
nnoremap eJ :NeoTreeReveal<cr>

nmap mm <Plug>BookmarkToggle
nmap ma :Telescope vim_bookmarks<cr>
nmap mn <Plug>BookmarkNext
nmap mp <Plug>BookmarkPrev
nmap mx :BookmarkClearAll<cr>
nmap mi :BookmarkAnnotate<cr>

nnoremap rr :FzfLua live_grep<cr>
nnoremap <space>T :Telescope<space>
