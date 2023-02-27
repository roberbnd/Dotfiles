nnoremap <space>pw :WorkspacesOpen<cr>
nnoremap <space>pR :lua require('spectre').open()<cr>
nnoremap e, :lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap ea :lua require("harpoon.mark").add_file()<cr>

nnoremap <space><space>t :GrappleToggle<cr>
nnoremap <space><space>m :GrapplePopup tags<cr>

nnoremap rr :FzfLua live_grep<cr>
