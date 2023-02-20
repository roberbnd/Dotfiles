nnoremap <space>pw :WorkspacesOpen<cr>
nnoremap <space>pR :lua require('spectre').open()<cr>
nnoremap e, :lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap ea :lua require("harpoon.mark").add_file()<cr>

nnoremap <space><space>t :GrappleToggle<cr>
nnoremap <space><space>m :GrapplePopup tags<cr>

nnoremap rr :Rg2<cr>
" nnoremap <space>ps :FzfLua grep_project<cr>
nnoremap <space>pr :Rg<cr>
" omit the path file as string to search
command! -bang -nargs=* Rg2 call fzf#vim#grep(
            \ "rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>),
            \ 1, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}),
            \ <bang>0 )
