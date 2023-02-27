nnoremap <space>wn :tabnew<cr>
nnoremap <space>wj :tabmove -1<cr>
nnoremap <space>wk :tabmove +1<cr>
nnoremap <space>wc :tabclose<cr>

nnoremap <space>w<left> :tabfirst<cr>
nnoremap <space>w<right> :tablast<cr>

" close all the tabs to the right
" nmap sC <cmd>.+1,$tabdo :q<cr>
nnoremap <space>wC <cmd>.+1,$tabdo :q<cr>

nmap B :tabprevious<cr>
nmap M :tabnext<cr>

nnoremap <silent> ch :exe "tabn ".g:lasttab<cr>

lua <<EOF
vim.keymap.set("n", "<leader>ww", function()
  local picked_window_id = require("window-picker").pick_window() or vim.api.nvim_get_current_win()
  vim.api.nvim_set_current_win(picked_window_id)
end, { desc = "Pick a window" })
EOF
