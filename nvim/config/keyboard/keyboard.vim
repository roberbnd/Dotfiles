source ~/.config/nvim/config/git/git_mapping.vim
source ~/.config/nvim/config/lsp/lsp_mapping.vim
source ~/.config/nvim/config/testing/testing_mapping.vim
source ~/.config/nvim/config/keyboard/keyboard_fs.vim
source ~/.config/nvim/config/keyboard/keyboard_window.vim
source ~/.config/nvim/config/keyboard/keyboard_rest.vim
source ~/.config/nvim/config/keyboard/keyboard_project.vim
source ~/.config/nvim/config/keyboard/keyboard_buffer.vim
source ~/.config/nvim/config/keyboard/keyboard_file.vim
source ~/.config/nvim/config/keyboard/keyboard_terminal.vim
source ~/.config/nvim/config/keyboard/keyboard_motion.vim
source ~/.config/nvim/config/keyboard/keyboard_surround.vim
source ~/.config/nvim/config/keyboard/keyboard_split.vim
source ~/.config/nvim/config/keyboard/keyboard_bookmarks.vim
source ~/.config/nvim/config/keyboard/insert.vim

nnoremap Q <nop>
nnoremap ZZ <nop>

nnoremap U <c-R>

smap <cr> <esc>
au FileType * imap ] <bs>
au FileType * tmap ] <bs>
au FileType * imap ) <esc>
au FileType * smap ) <esc>
au FileType * vmap ) <esc>

nnoremap <space>U :PlugUpdate<cr>

nnoremap rp :qa<cr>
nnoremap <space>rp :qa!<cr>

" without easymotion
nnoremap <space>/ /

"replace text
" split html elements
vmap <space>s :s/<[^>]*>/\r&\r/g<cr>

vnoremap r y:%s/<c-r>"/
vnoremap / y/<c-r>"<cr>

"Add empty lines
nnoremap <silent> <space>j :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap <silent> <space>k :<c-u>put =repeat(nr2char(10), v:count1)<cr>

"Paste {{{====================================
nnoremap <space>+ /<c-r>+<cr>
nnoremap P :lua require('neoclip.fzf')()<cr>
"}}}==========================================

" Use map <buffer> to only map dd in the quickfix window. Requires +localmap
autocmd FileType qf map <buffer> dd :RemoveQFItem<cr>
