source ~/.config/nvim/config/keyboard/keyboard_fs.vim
source ~/.config/nvim/config/keyboard/keyboard_git.vim
source ~/.config/nvim/config/keyboard/keyboard_window.vim
source ~/.config/nvim/config/keyboard/keyboard_rest.vim
source ~/.config/nvim/config/keyboard/keyboard_project.vim
source ~/.config/nvim/config/keyboard/keyboard_lsp.vim
source ~/.config/nvim/config/keyboard/keyboard_buffer.vim
source ~/.config/nvim/config/keyboard/keyboard_file.vim
source ~/.config/nvim/config/keyboard/keyboard_terminal.vim
source ~/.config/nvim/config/keyboard/keyboard_motion.vim
source ~/.config/nvim/config/keyboard/keyboard_surround.vim
source ~/.config/nvim/config/keyboard/keyboard_split.vim
source ~/.config/nvim/config/keyboard/keyboard_bookmarks.vim
source ~/.config/nvim/config/keyboard/insert.vim

nmap T :TestNearest<cr>
nmap <space>T :TestFile<cr>

nnoremap Q <nop>
nnoremap ZZ <nop>

nnoremap U <c-R>

smap ) <esc>
vnoremap ) <esc>

"open notes
nnoremap <space>on :e ~/vimwiki/index.md<cr>
"open keyboard maps
nnoremap <space>ok :e ~/.config/nvim/config/keyboard/keyboard.vim<cr>
nnoremap <space>oo :Other<cr>
nnoremap <space>U :PlugUpdate<cr>

nnoremap rp :qa<cr>
nnoremap <space>rp :qa!<cr>

" without easymotion
nnoremap <space>/ /

nnoremap <space>ha :nohlsearch<cr>
nnoremap <space>ht :e %:h/
nnoremap <space>hq :edit<cr>
nnoremap <space>hQ :edit!<cr>
nnoremap <space>hc :copen<cr>

nnoremap <space>dl "_dd
"replace text
" split html elements
vmap <space>s :s/<[^>]*>/\r&\r/g<cr>

vnoremap r y:%s/<c-r>"/
vnoremap / y/<c-r>"<cr>

"Add empty lines
nnoremap <silent> <space>j :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap <silent> <space>k :<c-u>put =repeat(nr2char(10), v:count1)<cr>


"Paste {{{====================================
" "Paste neovim's clipboard
" nnoremap <space>g /<c-r>"<cr>
" "Paste computer's clipboard
nnoremap <space>* /<c-r>+<cr>
" nnoremap P :lua require('neoclip.fzf')('a')<cr>
nnoremap P :Telescope neoclip<cr>
" nnoremap <space>p :put<cr>
"}}}==========================================
