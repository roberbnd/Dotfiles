nnoremap <f1> :e ~/.config/nvim/init.vim<cr>
nnoremap <f2> :source ~/.config/nvim/init.vim<cr>
nnoremap <f3> :call ToggleWrap()<cr>
nnoremap <f4> :set number!<cr>
nnoremap <f5> :call ToggleScrollbind()<cr>
" nnoremap <f6> :Twilight<cr>
nnoremap <f6> :Limelight!!<cr>

nnoremap <space>U :PlugUpdate<cr>

nnoremap Q <nop>
nnoremap ZZ <nop>

nnoremap U <c-R>

smap <cr> <esc>

nnoremap rp :qa<cr>
nnoremap <space>rp :qa!<cr>

" without easymotion
nnoremap <space>/ /

" Use map <buffer> to only map dd in the quickfix window. Requires +localmap
autocmd FileType qf map <buffer> dd :RemoveQFItem<cr>
